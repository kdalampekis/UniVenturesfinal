// ignore_for_file: must_be_immutable

part of 'gmail_visiblepassword_signup_bloc.dart';

/// Represents the state of GmailVisiblepasswordSignup in the application.
class GmailVisiblepasswordSignupState extends Equatable {
  GmailVisiblepasswordSignupState({
    this.passwordController,
    this.showPassword = false,
    this.gmailVisiblepasswordSignupModelObj,
  });

  TextEditingController? passwordController;

  GmailVisiblepasswordSignupModel? gmailVisiblepasswordSignupModelObj;

  bool showPassword;

  @override
  List<Object?> get props => [
        passwordController,
        showPassword,
        gmailVisiblepasswordSignupModelObj,
      ];
  GmailVisiblepasswordSignupState copyWith({
    TextEditingController? passwordController,
    bool? showPassword,
    GmailVisiblepasswordSignupModel? gmailVisiblepasswordSignupModelObj,
  }) {
    return GmailVisiblepasswordSignupState(
      passwordController: passwordController ?? this.passwordController,
      showPassword: showPassword ?? this.showPassword,
      gmailVisiblepasswordSignupModelObj: gmailVisiblepasswordSignupModelObj ??
          this.gmailVisiblepasswordSignupModelObj,
    );
  }
}
