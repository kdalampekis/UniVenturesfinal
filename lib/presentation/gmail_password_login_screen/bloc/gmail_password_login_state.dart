// ignore_for_file: must_be_immutable

part of 'gmail_password_login_bloc.dart';

/// Represents the state of GmailPasswordLogin in the application.
class GmailPasswordLoginState extends Equatable {
  GmailPasswordLoginState({
    this.passwordController,
    this.gmailPasswordLoginModelObj,
  });

  TextEditingController? passwordController;

  GmailPasswordLoginModel? gmailPasswordLoginModelObj;

  @override
  List<Object?> get props => [
        passwordController,
        gmailPasswordLoginModelObj,
      ];
  GmailPasswordLoginState copyWith({
    TextEditingController? passwordController,
    GmailPasswordLoginModel? gmailPasswordLoginModelObj,
  }) {
    return GmailPasswordLoginState(
      passwordController: passwordController ?? this.passwordController,
      gmailPasswordLoginModelObj:
          gmailPasswordLoginModelObj ?? this.gmailPasswordLoginModelObj,
    );
  }
}
