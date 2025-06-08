import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/models/change_password_request_body.dart';
import '../data/repos/change_password_repo.dart';
import 'change_password_state.dart';

class ChangePasswordCubit extends Cubit<ChangePasswordState> {
  final ChangePasswordRepo _changePasswordRepo;

  ChangePasswordCubit(this._changePasswordRepo)
      : super(const ChangePasswordState.initial());

  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  void emitChangePasswordStates(
      ChangePasswordRequestBody changePasswordRequestBody) async {
    emit(const ChangePasswordState.loading());
    final response =
        await _changePasswordRepo.changePassword(changePasswordRequestBody);
    response.when(success: (changePasswordResponse) {
      emit(ChangePasswordState.success(changePasswordResponse));
    }, failure: (error) {
      emit(ChangePasswordState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}
