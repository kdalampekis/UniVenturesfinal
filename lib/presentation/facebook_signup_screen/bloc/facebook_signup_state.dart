// ignore_for_file: must_be_immutable

part of 'facebook_signup_bloc.dart';

/// Represents the state of FacebookSignup in the application.
class FacebookSignupState extends Equatable {
  FacebookSignupState({
    this.phoneController,
    this.passwordController,
    this.isShowPassword = true,
    this.facebookSignupModelObj,
  });

  TextEditingController? phoneController;

  TextEditingController? passwordController;

  FacebookSignupModel? facebookSignupModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        phoneController,
        passwordController,
        isShowPassword,
        facebookSignupModelObj,
      ];
  FacebookSignupState copyWith({
    TextEditingController? phoneController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    FacebookSignupModel? facebookSignupModelObj,
  }) {
    return FacebookSignupState(
      phoneController: phoneController ?? this.phoneController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      facebookSignupModelObj:
          facebookSignupModelObj ?? this.facebookSignupModelObj,
    );
  }
}
