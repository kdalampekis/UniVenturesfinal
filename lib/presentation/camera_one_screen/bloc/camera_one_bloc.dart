import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:kwstas_s_application2/presentation/camera_one_screen/models/camera_one_model.dart';
part 'camera_one_event.dart';
part 'camera_one_state.dart';

/// A bloc that manages the state of a CameraOne according to the event that is dispatched to it.
class CameraOneBloc extends Bloc<CameraOneEvent, CameraOneState> {
  CameraOneBloc(CameraOneState initialState) : super(initialState) {
    on<CameraOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CameraOneInitialEvent event,
    Emitter<CameraOneState> emit,
  ) async {}
}
