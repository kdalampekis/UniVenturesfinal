// ignore_for_file: must_be_immutable

part of 'apple_signup_bloc.dart';

/// Represents the state of AppleSignup in the application.
class AppleSignupState extends Equatable {
  AppleSignupState({this.appleSignupModelObj});

  AppleSignupModel? appleSignupModelObj;

  @override
  List<Object?> get props => [
        appleSignupModelObj,
      ];
  AppleSignupState copyWith({AppleSignupModel? appleSignupModelObj}) {
    return AppleSignupState(
      appleSignupModelObj: appleSignupModelObj ?? this.appleSignupModelObj,
    );
  }
}
