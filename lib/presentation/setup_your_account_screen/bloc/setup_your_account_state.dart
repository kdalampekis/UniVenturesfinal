// ignore_for_file: must_be_immutable

part of 'setup_your_account_bloc.dart';

/// Represents the state of SetupYourAccount in the application.
class SetupYourAccountState extends Equatable {
  SetupYourAccountState({this.setupYourAccountModelObj});

  SetupYourAccountModel? setupYourAccountModelObj;

  @override
  List<Object?> get props => [
        setupYourAccountModelObj,
      ];
  SetupYourAccountState copyWith(
      {SetupYourAccountModel? setupYourAccountModelObj}) {
    return SetupYourAccountState(
      setupYourAccountModelObj:
          setupYourAccountModelObj ?? this.setupYourAccountModelObj,
    );
  }
}
