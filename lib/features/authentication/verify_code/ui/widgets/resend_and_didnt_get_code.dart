import 'dart:async';

import 'package:flutter/material.dart';

import '../../../../../../core/theming/styles.dart';


class ResendAndDidntGetCode extends StatefulWidget {
  final Function()? onResend;

  const ResendAndDidntGetCode({super.key, this.onResend});

  @override
  State<ResendAndDidntGetCode> createState() => _ResendAndDidntGetCodeState();
}

class _ResendAndDidntGetCodeState extends State<ResendAndDidntGetCode> {
  int _secondsRemaining = 20;
  late Timer _timer;
  bool _canResend = false;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    setState(() => _canResend = false);
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_secondsRemaining > 0) {
        setState(() => _secondsRemaining--);
      } else {
        _timer.cancel();
        setState(() => _canResend = true);
      }
    });
  }

  void _resendCode() {
    if (!_canResend) return;
    widget.onResend?.call();
    setState(() {
      _secondsRemaining = 20;
    });
    _startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: _resendCode,
          child: Text(
            "Didn't get code?",
            style: _canResend
                ? AppTextStyles.font14SchoolBusYellowPoppinsMedium
                : AppTextStyles.font14BlueJayPoppinsMedium,
          ),
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Resend in ",
                style: AppTextStyles.font14BlueJayPoppinsMedium,
              ),
              TextSpan(
                text: "00:${_secondsRemaining.toString().padLeft(2, '0')}",
                style: AppTextStyles.font14SchoolBusYellowPoppinsMedium,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
