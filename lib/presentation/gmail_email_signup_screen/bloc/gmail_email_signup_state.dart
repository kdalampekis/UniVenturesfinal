// ignore_for_file: must_be_immutable

part of 'gmail_email_signup_bloc.dart';

/// Represents the state of GmailEmailSignup in the application.
class GmailEmailSignupState extends Equatable {
  GmailEmailSignupState({
    this.phoneController,
    this.gmailEmailSignupModelObj,
  });

  TextEditingController? phoneController;

  GmailEmailSignupModel? gmailEmailSignupModelObj;

  @override
  List<Object?> get props => [
        phoneController,
        gmailEmailSignupModelObj,
      ];
  GmailEmailSignupState copyWith({
    TextEditingController? phoneController,
    GmailEmailSignupModel? gmailEmailSignupModelObj,
  }) {
    return GmailEmailSignupState(
      phoneController: phoneController ?? this.phoneController,
      gmailEmailSignupModelObj:
          gmailEmailSignupModelObj ?? this.gmailEmailSignupModelObj,
    );
  }
}
