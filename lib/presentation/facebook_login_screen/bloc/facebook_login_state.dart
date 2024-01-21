// ignore_for_file: must_be_immutable

part of 'facebook_login_bloc.dart';

/// Represents the state of FacebookLogin in the application.
class FacebookLoginState extends Equatable {
  FacebookLoginState({
    this.phoneController,
    this.passwordController,
    this.isShowPassword = true,
    this.facebookLoginModelObj,
  });

  TextEditingController? phoneController;

  TextEditingController? passwordController;

  FacebookLoginModel? facebookLoginModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        phoneController,
        passwordController,
        isShowPassword,
        facebookLoginModelObj,
      ];
  FacebookLoginState copyWith({
    TextEditingController? phoneController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    FacebookLoginModel? facebookLoginModelObj,
  }) {
    return FacebookLoginState(
      phoneController: phoneController ?? this.phoneController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      facebookLoginModelObj:
          facebookLoginModelObj ?? this.facebookLoginModelObj,
    );
  }
}
