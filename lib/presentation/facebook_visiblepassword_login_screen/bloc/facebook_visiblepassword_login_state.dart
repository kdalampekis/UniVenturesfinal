// ignore_for_file: must_be_immutable

part of 'facebook_visiblepassword_login_bloc.dart';

/// Represents the state of FacebookVisiblepasswordLogin in the application.
class FacebookVisiblepasswordLoginState extends Equatable {
  FacebookVisiblepasswordLoginState({
    this.phoneController,
    this.passwordController,
    this.isShowPassword = true,
    this.facebookVisiblepasswordLoginModelObj,
  });

  TextEditingController? phoneController;

  TextEditingController? passwordController;

  FacebookVisiblepasswordLoginModel? facebookVisiblepasswordLoginModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        phoneController,
        passwordController,
        isShowPassword,
        facebookVisiblepasswordLoginModelObj,
      ];
  FacebookVisiblepasswordLoginState copyWith({
    TextEditingController? phoneController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    FacebookVisiblepasswordLoginModel? facebookVisiblepasswordLoginModelObj,
  }) {
    return FacebookVisiblepasswordLoginState(
      phoneController: phoneController ?? this.phoneController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      facebookVisiblepasswordLoginModelObj:
          facebookVisiblepasswordLoginModelObj ??
              this.facebookVisiblepasswordLoginModelObj,
    );
  }
}
