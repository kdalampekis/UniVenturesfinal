import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/setup_your_account_screen/models/setup_your_account_model.dart';part 'setup_your_account_event.dart';part 'setup_your_account_state.dart';/// A bloc that manages the state of a SetupYourAccount according to the event that is dispatched to it.
class SetupYourAccountBloc extends Bloc<SetupYourAccountEvent, SetupYourAccountState> {SetupYourAccountBloc(SetupYourAccountState initialState) : super(initialState) { on<SetupYourAccountInitialEvent>(_onInitialize); }

_onInitialize(SetupYourAccountInitialEvent event, Emitter<SetupYourAccountState> emit, ) async  {  } 
 }
