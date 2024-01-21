// ignore_for_file: must_be_immutable

part of 'login_visiblepassword_bloc.dart';

/// Represents the state of LoginVisiblepassword in the application.
class LoginVisiblepasswordState extends Equatable {
  LoginVisiblepasswordState({
    this.emailController,
    this.passwordController,
    this.isShowPassword = true,
    this.loginVisiblepasswordModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? passwordController;

  LoginVisiblepasswordModel? loginVisiblepasswordModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        emailController,
        passwordController,
        isShowPassword,
        loginVisiblepasswordModelObj,
      ];
  LoginVisiblepasswordState copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    LoginVisiblepasswordModel? loginVisiblepasswordModelObj,
  }) {
    return LoginVisiblepasswordState(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      loginVisiblepasswordModelObj:
          loginVisiblepasswordModelObj ?? this.loginVisiblepasswordModelObj,
    );
  }
}
