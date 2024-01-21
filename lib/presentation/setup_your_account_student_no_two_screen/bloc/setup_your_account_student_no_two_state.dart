// ignore_for_file: must_be_immutable

part of 'setup_your_account_student_no_two_bloc.dart';

/// Represents the state of SetupYourAccountStudentNoTwo in the application.
class SetupYourAccountStudentNoTwoState extends Equatable {
  SetupYourAccountStudentNoTwoState({
    this.questionOneController,
    this.questionTwoController,
    this.setupYourAccountStudentNoTwoModelObj,
  });

  TextEditingController? questionOneController;

  TextEditingController? questionTwoController;

  SetupYourAccountStudentNoTwoModel? setupYourAccountStudentNoTwoModelObj;

  @override
  List<Object?> get props => [
        questionOneController,
        questionTwoController,
        setupYourAccountStudentNoTwoModelObj,
      ];
  SetupYourAccountStudentNoTwoState copyWith({
    TextEditingController? questionOneController,
    TextEditingController? questionTwoController,
    SetupYourAccountStudentNoTwoModel? setupYourAccountStudentNoTwoModelObj,
  }) {
    return SetupYourAccountStudentNoTwoState(
      questionOneController:
          questionOneController ?? this.questionOneController,
      questionTwoController:
          questionTwoController ?? this.questionTwoController,
      setupYourAccountStudentNoTwoModelObj:
          setupYourAccountStudentNoTwoModelObj ??
              this.setupYourAccountStudentNoTwoModelObj,
    );
  }
}
