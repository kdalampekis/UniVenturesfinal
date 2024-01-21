// ignore_for_file: must_be_immutable

part of 'forgot_password_allok_bloc.dart';

/// Represents the state of ForgotPasswordAllok in the application.
class ForgotPasswordAllokState extends Equatable {
  ForgotPasswordAllokState({this.forgotPasswordAllokModelObj});

  ForgotPasswordAllokModel? forgotPasswordAllokModelObj;

  @override
  List<Object?> get props => [
        forgotPasswordAllokModelObj,
      ];
  ForgotPasswordAllokState copyWith(
      {ForgotPasswordAllokModel? forgotPasswordAllokModelObj}) {
    return ForgotPasswordAllokState(
      forgotPasswordAllokModelObj:
          forgotPasswordAllokModelObj ?? this.forgotPasswordAllokModelObj,
    );
  }
}
