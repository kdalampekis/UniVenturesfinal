// ignore_for_file: must_be_immutable

part of 'reset_password_bloc.dart';

/// Represents the state of ResetPassword in the application.
class ResetPasswordState extends Equatable {
  ResetPasswordState({
    this.newpasswordController,
    this.newpasswordController1,
    this.resetPasswordModelObj,
  });

  TextEditingController? newpasswordController;

  TextEditingController? newpasswordController1;

  ResetPasswordModel? resetPasswordModelObj;

  @override
  List<Object?> get props => [
        newpasswordController,
        newpasswordController1,
        resetPasswordModelObj,
      ];
  ResetPasswordState copyWith({
    TextEditingController? newpasswordController,
    TextEditingController? newpasswordController1,
    ResetPasswordModel? resetPasswordModelObj,
  }) {
    return ResetPasswordState(
      newpasswordController:
          newpasswordController ?? this.newpasswordController,
      newpasswordController1:
          newpasswordController1 ?? this.newpasswordController1,
      resetPasswordModelObj:
          resetPasswordModelObj ?? this.resetPasswordModelObj,
    );
  }
}
