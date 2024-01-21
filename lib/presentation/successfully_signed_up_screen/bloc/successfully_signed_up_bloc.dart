import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/successfully_signed_up_screen/models/successfully_signed_up_model.dart';part 'successfully_signed_up_event.dart';part 'successfully_signed_up_state.dart';/// A bloc that manages the state of a SuccessfullySignedUp according to the event that is dispatched to it.
class SuccessfullySignedUpBloc extends Bloc<SuccessfullySignedUpEvent, SuccessfullySignedUpState> {SuccessfullySignedUpBloc(SuccessfullySignedUpState initialState) : super(initialState) { on<SuccessfullySignedUpInitialEvent>(_onInitialize); }

_onInitialize(SuccessfullySignedUpInitialEvent event, Emitter<SuccessfullySignedUpState> emit, ) async  {  } 
 }
