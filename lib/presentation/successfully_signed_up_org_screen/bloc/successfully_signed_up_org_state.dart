// ignore_for_file: must_be_immutable

part of 'successfully_signed_up_org_bloc.dart';

/// Represents the state of SuccessfullySignedUpOrg in the application.
class SuccessfullySignedUpOrgState extends Equatable {
  SuccessfullySignedUpOrgState({this.successfullySignedUpOrgModelObj});

  SuccessfullySignedUpOrgModel? successfullySignedUpOrgModelObj;

  @override
  List<Object?> get props => [
        successfullySignedUpOrgModelObj,
      ];
  SuccessfullySignedUpOrgState copyWith(
      {SuccessfullySignedUpOrgModel? successfullySignedUpOrgModelObj}) {
    return SuccessfullySignedUpOrgState(
      successfullySignedUpOrgModelObj: successfullySignedUpOrgModelObj ??
          this.successfullySignedUpOrgModelObj,
    );
  }
}
