// ignore_for_file: must_be_immutable

part of 'setup_your_account_organization_bloc.dart';

/// Represents the state of SetupYourAccountOrganization in the application.
class SetupYourAccountOrganizationState extends Equatable {
  SetupYourAccountOrganizationState(
      {this.setupYourAccountOrganizationModelObj});

  SetupYourAccountOrganizationModel? setupYourAccountOrganizationModelObj;

  @override
  List<Object?> get props => [
        setupYourAccountOrganizationModelObj,
      ];
  SetupYourAccountOrganizationState copyWith(
      {SetupYourAccountOrganizationModel?
          setupYourAccountOrganizationModelObj}) {
    return SetupYourAccountOrganizationState(
      setupYourAccountOrganizationModelObj:
          setupYourAccountOrganizationModelObj ??
              this.setupYourAccountOrganizationModelObj,
    );
  }
}
