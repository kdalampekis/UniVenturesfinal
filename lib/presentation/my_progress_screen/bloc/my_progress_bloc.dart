import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:kwstas_s_application2/presentation/my_progress_screen/models/my_progress_model.dart';
part 'my_progress_event.dart';
part 'my_progress_state.dart';

/// A bloc that manages the state of a MyProgress according to the event that is dispatched to it.
class MyProgressBloc extends Bloc<MyProgressEvent, MyProgressState> {
  MyProgressBloc(MyProgressState initialState) : super(initialState) {
    on<MyProgressInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyProgressInitialEvent event,
    Emitter<MyProgressState> emit,
  ) async {
    emit(state.copyWith(
      eventFiveEditTextController: TextEditingController(),
      tedxEventEditText1Controller: TextEditingController(),
      tedxEventEditText2Controller: TextEditingController(),
      tedxEventEditText3Controller: TextEditingController(),
      akariconscircleEditTextController: TextEditingController(),
    ));
  }
}
