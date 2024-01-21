// ignore_for_file: must_be_immutable

part of 'gmail_visiblepassword_login_bloc.dart';

/// Represents the state of GmailVisiblepasswordLogin in the application.
class GmailVisiblepasswordLoginState extends Equatable {
  GmailVisiblepasswordLoginState({
    this.passwordController,
    this.showPassword = false,
    this.gmailVisiblepasswordLoginModelObj,
  });

  TextEditingController? passwordController;

  GmailVisiblepasswordLoginModel? gmailVisiblepasswordLoginModelObj;

  bool showPassword;

  @override
  List<Object?> get props => [
        passwordController,
        showPassword,
        gmailVisiblepasswordLoginModelObj,
      ];
  GmailVisiblepasswordLoginState copyWith({
    TextEditingController? passwordController,
    bool? showPassword,
    GmailVisiblepasswordLoginModel? gmailVisiblepasswordLoginModelObj,
  }) {
    return GmailVisiblepasswordLoginState(
      passwordController: passwordController ?? this.passwordController,
      showPassword: showPassword ?? this.showPassword,
      gmailVisiblepasswordLoginModelObj: gmailVisiblepasswordLoginModelObj ??
          this.gmailVisiblepasswordLoginModelObj,
    );
  }
}
