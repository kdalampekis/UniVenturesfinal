// ignore_for_file: must_be_immutable

part of 'signup_uncheckerror_bloc.dart';

/// Represents the state of SignupUncheckerror in the application.
class SignupUncheckerrorState extends Equatable {
  SignupUncheckerrorState({
    this.emailEditTextController,
    this.passwordEditTextController,
    this.confirmPasswordEditTextController,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.signupUncheckerrorModelObj,
  });

  TextEditingController? emailEditTextController;

  TextEditingController? passwordEditTextController;

  TextEditingController? confirmPasswordEditTextController;

  SignupUncheckerrorModel? signupUncheckerrorModelObj;

  bool isShowPassword;

  bool isShowPassword1;

  @override
  List<Object?> get props => [
        emailEditTextController,
        passwordEditTextController,
        confirmPasswordEditTextController,
        isShowPassword,
        isShowPassword1,
        signupUncheckerrorModelObj,
      ];
  SignupUncheckerrorState copyWith({
    TextEditingController? emailEditTextController,
    TextEditingController? passwordEditTextController,
    TextEditingController? confirmPasswordEditTextController,
    bool? isShowPassword,
    bool? isShowPassword1,
    SignupUncheckerrorModel? signupUncheckerrorModelObj,
  }) {
    return SignupUncheckerrorState(
      emailEditTextController:
          emailEditTextController ?? this.emailEditTextController,
      passwordEditTextController:
          passwordEditTextController ?? this.passwordEditTextController,
      confirmPasswordEditTextController: confirmPasswordEditTextController ??
          this.confirmPasswordEditTextController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      signupUncheckerrorModelObj:
          signupUncheckerrorModelObj ?? this.signupUncheckerrorModelObj,
    );
  }
}
