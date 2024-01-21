// ignore_for_file: must_be_immutable

part of 'setup_your_account_student_four_bloc.dart';

/// Represents the state of SetupYourAccountStudentFour in the application.
class SetupYourAccountStudentFourState extends Equatable {
  SetupYourAccountStudentFourState({this.setupYourAccountStudentFourModelObj});

  SetupYourAccountStudentFourModel? setupYourAccountStudentFourModelObj;

  @override
  List<Object?> get props => [
        setupYourAccountStudentFourModelObj,
      ];
  SetupYourAccountStudentFourState copyWith(
      {SetupYourAccountStudentFourModel? setupYourAccountStudentFourModelObj}) {
    return SetupYourAccountStudentFourState(
      setupYourAccountStudentFourModelObj:
          setupYourAccountStudentFourModelObj ??
              this.setupYourAccountStudentFourModelObj,
    );
  }
}
