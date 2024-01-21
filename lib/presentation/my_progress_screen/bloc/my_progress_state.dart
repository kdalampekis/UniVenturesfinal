// ignore_for_file: must_be_immutable

part of 'my_progress_bloc.dart';

/// Represents the state of MyProgress in the application.
class MyProgressState extends Equatable {
  MyProgressState({
    this.eventFiveEditTextController,
    this.tedxEventEditText1Controller,
    this.tedxEventEditText2Controller,
    this.tedxEventEditText3Controller,
    this.akariconscircleEditTextController,
    this.myProgressModelObj,
  });

  TextEditingController? eventFiveEditTextController;

  TextEditingController? tedxEventEditText1Controller;

  TextEditingController? tedxEventEditText2Controller;

  TextEditingController? tedxEventEditText3Controller;

  TextEditingController? akariconscircleEditTextController;

  MyProgressModel? myProgressModelObj;

  @override
  List<Object?> get props => [
        eventFiveEditTextController,
        tedxEventEditText1Controller,
        tedxEventEditText2Controller,
        tedxEventEditText3Controller,
        akariconscircleEditTextController,
        myProgressModelObj,
      ];
  MyProgressState copyWith({
    TextEditingController? eventFiveEditTextController,
    TextEditingController? tedxEventEditText1Controller,
    TextEditingController? tedxEventEditText2Controller,
    TextEditingController? tedxEventEditText3Controller,
    TextEditingController? akariconscircleEditTextController,
    MyProgressModel? myProgressModelObj,
  }) {
    return MyProgressState(
      eventFiveEditTextController:
          eventFiveEditTextController ?? this.eventFiveEditTextController,
      tedxEventEditText1Controller:
          tedxEventEditText1Controller ?? this.tedxEventEditText1Controller,
      tedxEventEditText2Controller:
          tedxEventEditText2Controller ?? this.tedxEventEditText2Controller,
      tedxEventEditText3Controller:
          tedxEventEditText3Controller ?? this.tedxEventEditText3Controller,
      akariconscircleEditTextController: akariconscircleEditTextController ??
          this.akariconscircleEditTextController,
      myProgressModelObj: myProgressModelObj ?? this.myProgressModelObj,
    );
  }
}
