import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../data/models/reset_password_request_body.dart';
import '../data/repos/reset_password_repo.dart';
import 'reset_password_state.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  final ResetPasswordRepo _resetPasswordRepo;

  ResetPasswordCubit(this._resetPasswordRepo)
      : super(const ResetPasswordState.initial());

  TextEditingController emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitResetPasswordStates(ResetPasswordRequestBody resetPasswordRequestBody) async {
    emit(const ResetPasswordState.loading());
    final response = await _resetPasswordRepo.resetPassword(resetPasswordRequestBody);
    response.when(success: (resetPasswordResponse) {
      emit(ResetPasswordState.success(resetPasswordResponse));
    }, failure: (error) {
      emit(ResetPasswordState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}
