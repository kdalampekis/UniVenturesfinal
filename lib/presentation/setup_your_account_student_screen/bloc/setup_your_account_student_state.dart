// ignore_for_file: must_be_immutable

part of 'setup_your_account_student_bloc.dart';

/// Represents the state of SetupYourAccountStudent in the application.
class SetupYourAccountStudentState extends Equatable {
  SetupYourAccountStudentState({this.setupYourAccountStudentModelObj});

  SetupYourAccountStudentModel? setupYourAccountStudentModelObj;

  @override
  List<Object?> get props => [
        setupYourAccountStudentModelObj,
      ];
  SetupYourAccountStudentState copyWith(
      {SetupYourAccountStudentModel? setupYourAccountStudentModelObj}) {
    return SetupYourAccountStudentState(
      setupYourAccountStudentModelObj: setupYourAccountStudentModelObj ??
          this.setupYourAccountStudentModelObj,
    );
  }
}
