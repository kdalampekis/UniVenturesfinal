// ignore_for_file: must_be_immutable

part of 'setup_your_account_organization_two_bloc.dart';

/// Represents the state of SetupYourAccountOrganizationTwo in the application.
class SetupYourAccountOrganizationTwoState extends Equatable {
  SetupYourAccountOrganizationTwoState({
    this.notStudentController,
    this.setupYourAccountOrganizationTwoModelObj,
  });

  TextEditingController? notStudentController;

  SetupYourAccountOrganizationTwoModel? setupYourAccountOrganizationTwoModelObj;

  @override
  List<Object?> get props => [
        notStudentController,
        setupYourAccountOrganizationTwoModelObj,
      ];
  SetupYourAccountOrganizationTwoState copyWith({
    TextEditingController? notStudentController,
    SetupYourAccountOrganizationTwoModel?
        setupYourAccountOrganizationTwoModelObj,
  }) {
    return SetupYourAccountOrganizationTwoState(
      notStudentController: notStudentController ?? this.notStudentController,
      setupYourAccountOrganizationTwoModelObj:
          setupYourAccountOrganizationTwoModelObj ??
              this.setupYourAccountOrganizationTwoModelObj,
    );
  }
}
