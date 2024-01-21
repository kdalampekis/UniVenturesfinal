// ignore_for_file: must_be_immutable

part of 'gmail_email_login_bloc.dart';

/// Represents the state of GmailEmailLogin in the application.
class GmailEmailLoginState extends Equatable {
  GmailEmailLoginState({
    this.phoneController,
    this.gmailEmailLoginModelObj,
  });

  TextEditingController? phoneController;

  GmailEmailLoginModel? gmailEmailLoginModelObj;

  @override
  List<Object?> get props => [
        phoneController,
        gmailEmailLoginModelObj,
      ];
  GmailEmailLoginState copyWith({
    TextEditingController? phoneController,
    GmailEmailLoginModel? gmailEmailLoginModelObj,
  }) {
    return GmailEmailLoginState(
      phoneController: phoneController ?? this.phoneController,
      gmailEmailLoginModelObj:
          gmailEmailLoginModelObj ?? this.gmailEmailLoginModelObj,
    );
  }
}
