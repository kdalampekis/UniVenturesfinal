import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/setup_your_account_student_screen/models/setup_your_account_student_model.dart';part 'setup_your_account_student_event.dart';part 'setup_your_account_student_state.dart';/// A bloc that manages the state of a SetupYourAccountStudent according to the event that is dispatched to it.
class SetupYourAccountStudentBloc extends Bloc<SetupYourAccountStudentEvent, SetupYourAccountStudentState> {SetupYourAccountStudentBloc(SetupYourAccountStudentState initialState) : super(initialState) { on<SetupYourAccountStudentInitialEvent>(_onInitialize); }

_onInitialize(SetupYourAccountStudentInitialEvent event, Emitter<SetupYourAccountStudentState> emit, ) async  {  } 
 }
