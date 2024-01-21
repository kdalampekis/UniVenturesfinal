// ignore_for_file: must_be_immutable

part of 'forgot_password_wrongemail_bloc.dart';

/// Represents the state of ForgotPasswordWrongemail in the application.
class ForgotPasswordWrongemailState extends Equatable {
  ForgotPasswordWrongemailState({
    this.emailController,
    this.forgotPasswordWrongemailModelObj,
  });

  TextEditingController? emailController;

  ForgotPasswordWrongemailModel? forgotPasswordWrongemailModelObj;

  @override
  List<Object?> get props => [
        emailController,
        forgotPasswordWrongemailModelObj,
      ];
  ForgotPasswordWrongemailState copyWith({
    TextEditingController? emailController,
    ForgotPasswordWrongemailModel? forgotPasswordWrongemailModelObj,
  }) {
    return ForgotPasswordWrongemailState(
      emailController: emailController ?? this.emailController,
      forgotPasswordWrongemailModelObj: forgotPasswordWrongemailModelObj ??
          this.forgotPasswordWrongemailModelObj,
    );
  }
}
