// ignore_for_file: must_be_immutable

part of 'apple_login_bloc.dart';

/// Represents the state of AppleLogin in the application.
class AppleLoginState extends Equatable {
  AppleLoginState({
    this.passwordController,
    this.isShowPassword = true,
    this.appleLoginModelObj,
  });

  TextEditingController? passwordController;

  AppleLoginModel? appleLoginModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        passwordController,
        isShowPassword,
        appleLoginModelObj,
      ];
  AppleLoginState copyWith({
    TextEditingController? passwordController,
    bool? isShowPassword,
    AppleLoginModel? appleLoginModelObj,
  }) {
    return AppleLoginState(
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      appleLoginModelObj: appleLoginModelObj ?? this.appleLoginModelObj,
    );
  }
}
