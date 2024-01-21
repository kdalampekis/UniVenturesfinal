import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/setup_your_accounttwo_screen/models/setup_your_accounttwo_model.dart';part 'setup_your_accounttwo_event.dart';part 'setup_your_accounttwo_state.dart';/// A bloc that manages the state of a SetupYourAccounttwo according to the event that is dispatched to it.
class SetupYourAccounttwoBloc extends Bloc<SetupYourAccounttwoEvent, SetupYourAccounttwoState> {SetupYourAccounttwoBloc(SetupYourAccounttwoState initialState) : super(initialState) { on<SetupYourAccounttwoInitialEvent>(_onInitialize); }

_onInitialize(SetupYourAccounttwoInitialEvent event, Emitter<SetupYourAccounttwoState> emit, ) async  { emit(state.copyWith(questionOneController: TextEditingController())); } 
 }
