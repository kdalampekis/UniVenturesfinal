// ignore_for_file: must_be_immutable

part of 'profile_change_name_bloc.dart';

/// Represents the state of ProfileChangeName in the application.
class ProfileChangeNameState extends Equatable {
  ProfileChangeNameState({
    this.languageEditTextController,
    this.userTypeEditTextController,
    this.passwordEditTextController,
    this.emailEditTextController,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.isShowPassword2 = true,
    this.profileChangeNameModelObj,
  });

  TextEditingController? languageEditTextController;

  TextEditingController? userTypeEditTextController;

  TextEditingController? passwordEditTextController;

  TextEditingController? emailEditTextController;

  ProfileChangeNameModel? profileChangeNameModelObj;

  bool isShowPassword;

  bool isShowPassword1;

  bool isShowPassword2;

  @override
  List<Object?> get props => [
        languageEditTextController,
        userTypeEditTextController,
        passwordEditTextController,
        emailEditTextController,
        isShowPassword,
        isShowPassword1,
        isShowPassword2,
        profileChangeNameModelObj,
      ];
  ProfileChangeNameState copyWith({
    TextEditingController? languageEditTextController,
    TextEditingController? userTypeEditTextController,
    TextEditingController? passwordEditTextController,
    TextEditingController? emailEditTextController,
    bool? isShowPassword,
    bool? isShowPassword1,
    bool? isShowPassword2,
    ProfileChangeNameModel? profileChangeNameModelObj,
  }) {
    return ProfileChangeNameState(
      languageEditTextController:
          languageEditTextController ?? this.languageEditTextController,
      userTypeEditTextController:
          userTypeEditTextController ?? this.userTypeEditTextController,
      passwordEditTextController:
          passwordEditTextController ?? this.passwordEditTextController,
      emailEditTextController:
          emailEditTextController ?? this.emailEditTextController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      isShowPassword2: isShowPassword2 ?? this.isShowPassword2,
      profileChangeNameModelObj:
          profileChangeNameModelObj ?? this.profileChangeNameModelObj,
    );
  }
}
