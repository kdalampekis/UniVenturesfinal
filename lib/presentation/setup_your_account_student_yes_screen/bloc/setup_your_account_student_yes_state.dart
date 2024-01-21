// ignore_for_file: must_be_immutable

part of 'setup_your_account_student_yes_bloc.dart';

/// Represents the state of SetupYourAccountStudentYes in the application.
class SetupYourAccountStudentYesState extends Equatable {
  SetupYourAccountStudentYesState({
    this.yesIamastudentController,
    this.fiftyEightController,
    this.setupYourAccountStudentYesModelObj,
  });

  TextEditingController? yesIamastudentController;

  TextEditingController? fiftyEightController;

  SetupYourAccountStudentYesModel? setupYourAccountStudentYesModelObj;

  @override
  List<Object?> get props => [
        yesIamastudentController,
        fiftyEightController,
        setupYourAccountStudentYesModelObj,
      ];
  SetupYourAccountStudentYesState copyWith({
    TextEditingController? yesIamastudentController,
    TextEditingController? fiftyEightController,
    SetupYourAccountStudentYesModel? setupYourAccountStudentYesModelObj,
  }) {
    return SetupYourAccountStudentYesState(
      yesIamastudentController:
          yesIamastudentController ?? this.yesIamastudentController,
      fiftyEightController: fiftyEightController ?? this.fiftyEightController,
      setupYourAccountStudentYesModelObj: setupYourAccountStudentYesModelObj ??
          this.setupYourAccountStudentYesModelObj,
    );
  }
}
