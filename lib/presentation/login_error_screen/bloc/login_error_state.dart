// ignore_for_file: must_be_immutable

part of 'login_error_bloc.dart';

/// Represents the state of LoginError in the application.
class LoginErrorState extends Equatable {
  LoginErrorState({
    this.emailController,
    this.passwordController,
    this.isShowPassword = true,
    this.loginErrorModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? passwordController;

  LoginErrorModel? loginErrorModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        emailController,
        passwordController,
        isShowPassword,
        loginErrorModelObj,
      ];
  LoginErrorState copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    LoginErrorModel? loginErrorModelObj,
  }) {
    return LoginErrorState(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      loginErrorModelObj: loginErrorModelObj ?? this.loginErrorModelObj,
    );
  }
}
