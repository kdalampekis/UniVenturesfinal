import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:kwstas_s_application2/presentation/sth_went_wrong_screen/models/sth_went_wrong_model.dart';
part 'sth_went_wrong_event.dart';
part 'sth_went_wrong_state.dart';

/// A bloc that manages the state of a SthWentWrong according to the event that is dispatched to it.
class SthWentWrongBloc extends Bloc<SthWentWrongEvent, SthWentWrongState> {
  SthWentWrongBloc(SthWentWrongState initialState) : super(initialState) {
    on<SthWentWrongInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SthWentWrongInitialEvent event,
    Emitter<SthWentWrongState> emit,
  ) async {}
}
