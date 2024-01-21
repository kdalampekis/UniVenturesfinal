// ignore_for_file: must_be_immutable

part of 'login_bloc.dart';

/// Represents the state of Login in the application.
class LoginState extends Equatable {
  final bool loginSuccess;
  final String? storedName;
  final String? storedLastName;


  LoginState({
    this.loginSuccess = false, this.storedName, this.storedLastName,
    this.emailController,
    this.passwordController,
    this.isShowPassword = true,
    this.loginModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? passwordController;

  LoginModel? loginModelObj;

  bool isShowPassword;


  LoginState copyWith({
    bool? loginSuccess,
    String? storedName,
    String? storedLastName,
    TextEditingController? emailController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    LoginModel? loginModelObj,
  }) {
    return LoginState(
      loginSuccess: loginSuccess ?? this.loginSuccess,
      storedName: storedName ?? this.storedName,
      storedLastName: storedLastName ?? this.storedLastName,
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      loginModelObj: loginModelObj ?? this.loginModelObj,
    );
  }
  @override
  List<Object?> get props => [loginSuccess, storedName, storedLastName,emailController,
        passwordController,
        isShowPassword,
        loginModelObj];
}
