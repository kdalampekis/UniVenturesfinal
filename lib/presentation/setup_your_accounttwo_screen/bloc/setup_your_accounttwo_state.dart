// ignore_for_file: must_be_immutable

part of 'setup_your_accounttwo_bloc.dart';

/// Represents the state of SetupYourAccounttwo in the application.
class SetupYourAccounttwoState extends Equatable {
  SetupYourAccounttwoState({
    this.questionOneController,
    this.setupYourAccounttwoModelObj,
  });

  TextEditingController? questionOneController;

  SetupYourAccounttwoModel? setupYourAccounttwoModelObj;

  @override
  List<Object?> get props => [
        questionOneController,
        setupYourAccounttwoModelObj,
      ];
  SetupYourAccounttwoState copyWith({
    TextEditingController? questionOneController,
    SetupYourAccounttwoModel? setupYourAccounttwoModelObj,
  }) {
    return SetupYourAccounttwoState(
      questionOneController:
          questionOneController ?? this.questionOneController,
      setupYourAccounttwoModelObj:
          setupYourAccounttwoModelObj ?? this.setupYourAccounttwoModelObj,
    );
  }
}
