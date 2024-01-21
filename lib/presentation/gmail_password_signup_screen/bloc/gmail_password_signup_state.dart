// ignore_for_file: must_be_immutable

part of 'gmail_password_signup_bloc.dart';

/// Represents the state of GmailPasswordSignup in the application.
class GmailPasswordSignupState extends Equatable {
  GmailPasswordSignupState({
    this.passwordController,
    this.gmailPasswordSignupModelObj,
  });

  TextEditingController? passwordController;

  GmailPasswordSignupModel? gmailPasswordSignupModelObj;

  @override
  List<Object?> get props => [
        passwordController,
        gmailPasswordSignupModelObj,
      ];
  GmailPasswordSignupState copyWith({
    TextEditingController? passwordController,
    GmailPasswordSignupModel? gmailPasswordSignupModelObj,
  }) {
    return GmailPasswordSignupState(
      passwordController: passwordController ?? this.passwordController,
      gmailPasswordSignupModelObj:
          gmailPasswordSignupModelObj ?? this.gmailPasswordSignupModelObj,
    );
  }
}
