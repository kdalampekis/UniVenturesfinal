// ignore_for_file: must_be_immutable

part of 'login_signup_bloc.dart';

/// Represents the state of LoginSignup in the application.
class LoginSignupState extends Equatable {
  LoginSignupState({this.loginSignupModelObj});

  LoginSignupModel? loginSignupModelObj;

  @override
  List<Object?> get props => [
        loginSignupModelObj,
      ];
  LoginSignupState copyWith({LoginSignupModel? loginSignupModelObj}) {
    return LoginSignupState(
      loginSignupModelObj: loginSignupModelObj ?? this.loginSignupModelObj,
    );
  }
}
