// ignore_for_file: must_be_immutable

part of 'facebook_visiblepassword_signup_bloc.dart';

/// Represents the state of FacebookVisiblepasswordSignup in the application.
class FacebookVisiblepasswordSignupState extends Equatable {
  FacebookVisiblepasswordSignupState({
    this.phoneController,
    this.passwordController,
    this.isShowPassword = true,
    this.facebookVisiblepasswordSignupModelObj,
  });

  TextEditingController? phoneController;

  TextEditingController? passwordController;

  FacebookVisiblepasswordSignupModel? facebookVisiblepasswordSignupModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        phoneController,
        passwordController,
        isShowPassword,
        facebookVisiblepasswordSignupModelObj,
      ];
  FacebookVisiblepasswordSignupState copyWith({
    TextEditingController? phoneController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    FacebookVisiblepasswordSignupModel? facebookVisiblepasswordSignupModelObj,
  }) {
    return FacebookVisiblepasswordSignupState(
      phoneController: phoneController ?? this.phoneController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      facebookVisiblepasswordSignupModelObj:
          facebookVisiblepasswordSignupModelObj ??
              this.facebookVisiblepasswordSignupModelObj,
    );
  }
}
