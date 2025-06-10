import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/constants.dart';
import '../../../../core/helpers/shared_pref_helper.dart';
import '../../../../core/networking/dio_factory.dart';
import '../data/model/login_request_body.dart';
import '../data/repos/login_repo.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;

  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isRememberMeChecked = false;

  void emitLoginStates(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(loginRequestBody);
    response.when(success: (loginResponse) async {
      if (isRememberMeChecked) {
        await saveUserAccessToken(loginResponse.accessToken ?? '');
        await saveUserRefreshToken(loginResponse.refreshToken ?? '');
        await SharedPrefHelper.setSecuredString(
            SharedPrefKeys.userRole, loginResponse.user?.role ?? '');
      } else {
        DioFactory.setTokenIntoHeaderAfterLogin(
            loginResponse.accessToken ?? '');
      }
      emit(LoginState.success(loginResponse));
    }, failure: (error) {
      emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
    });
  }

  Future<void> saveUserAccessToken(String token) async {
    // save access token to shared preferences
    await SharedPrefHelper.setSecuredString(
        SharedPrefKeys.userAccessToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }

  Future<void> saveUserRefreshToken(String token) async {
    // save refresh token to shared preferences
    await SharedPrefHelper.setSecuredString(
        SharedPrefKeys.userRefreshToken, token);
  }

  void setRememberMe(bool value) {
    isRememberMeChecked = value;
  }
}
