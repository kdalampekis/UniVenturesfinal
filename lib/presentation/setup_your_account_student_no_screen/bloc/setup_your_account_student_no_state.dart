// ignore_for_file: must_be_immutable

part of 'setup_your_account_student_no_bloc.dart';

/// Represents the state of SetupYourAccountStudentNo in the application.
class SetupYourAccountStudentNoState extends Equatable {
  SetupYourAccountStudentNoState({
    this.questionOneController,
    this.questionTwoController,
    this.setupYourAccountStudentNoModelObj,
  });

  TextEditingController? questionOneController;

  TextEditingController? questionTwoController;

  SetupYourAccountStudentNoModel? setupYourAccountStudentNoModelObj;

  @override
  List<Object?> get props => [
        questionOneController,
        questionTwoController,
        setupYourAccountStudentNoModelObj,
      ];
  SetupYourAccountStudentNoState copyWith({
    TextEditingController? questionOneController,
    TextEditingController? questionTwoController,
    SetupYourAccountStudentNoModel? setupYourAccountStudentNoModelObj,
  }) {
    return SetupYourAccountStudentNoState(
      questionOneController:
          questionOneController ?? this.questionOneController,
      questionTwoController:
          questionTwoController ?? this.questionTwoController,
      setupYourAccountStudentNoModelObj: setupYourAccountStudentNoModelObj ??
          this.setupYourAccountStudentNoModelObj,
    );
  }
}
