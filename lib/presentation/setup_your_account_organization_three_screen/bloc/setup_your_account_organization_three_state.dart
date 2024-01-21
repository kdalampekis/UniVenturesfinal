// ignore_for_file: must_be_immutable

part of 'setup_your_account_organization_three_bloc.dart';

/// Represents the state of SetupYourAccountOrganizationThree in the application.
class SetupYourAccountOrganizationThreeState extends Equatable {
  SetupYourAccountOrganizationThreeState({
    this.answerOneController,
    this.setupYourAccountOrganizationThreeModelObj,
  });

  TextEditingController? answerOneController;

  SetupYourAccountOrganizationThreeModel?
      setupYourAccountOrganizationThreeModelObj;

  @override
  List<Object?> get props => [
        answerOneController,
        setupYourAccountOrganizationThreeModelObj,
      ];
  SetupYourAccountOrganizationThreeState copyWith({
    TextEditingController? answerOneController,
    SetupYourAccountOrganizationThreeModel?
        setupYourAccountOrganizationThreeModelObj,
  }) {
    return SetupYourAccountOrganizationThreeState(
      answerOneController: answerOneController ?? this.answerOneController,
      setupYourAccountOrganizationThreeModelObj:
          setupYourAccountOrganizationThreeModelObj ??
              this.setupYourAccountOrganizationThreeModelObj,
    );
  }
}
