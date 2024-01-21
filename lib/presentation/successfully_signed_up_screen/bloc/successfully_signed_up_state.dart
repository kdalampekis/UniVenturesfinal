// ignore_for_file: must_be_immutable

part of 'successfully_signed_up_bloc.dart';

/// Represents the state of SuccessfullySignedUp in the application.
class SuccessfullySignedUpState extends Equatable {
  SuccessfullySignedUpState({this.successfullySignedUpModelObj});

  SuccessfullySignedUpModel? successfullySignedUpModelObj;

  @override
  List<Object?> get props => [
        successfullySignedUpModelObj,
      ];
  SuccessfullySignedUpState copyWith(
      {SuccessfullySignedUpModel? successfullySignedUpModelObj}) {
    return SuccessfullySignedUpState(
      successfullySignedUpModelObj:
          successfullySignedUpModelObj ?? this.successfullySignedUpModelObj,
    );
  }
}
