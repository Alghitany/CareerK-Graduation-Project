import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/model/verify_code_request_body.dart';
import '../data/repo/verify_code_repo.dart';
import 'verify_code_state.dart';

class VerifyCodeCubit extends Cubit<VerifyCodeState> {
  final VerifyCodeRepo _verifyCodeRepo;

  VerifyCodeCubit(this._verifyCodeRepo)
      : super(const VerifyCodeState.initial());

  TextEditingController otpController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitVerifyCodeStates(VerifyCodeRequestBody verifyCodeRequestBody) async {
    emit(const VerifyCodeState.loading());
    final response = await _verifyCodeRepo.verifyCode(verifyCodeRequestBody);
    response.when(success: (verifyCodeResponse) {
      emit(VerifyCodeState.success(verifyCodeResponse));
    }, failure: (error) {
      emit(VerifyCodeState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}
