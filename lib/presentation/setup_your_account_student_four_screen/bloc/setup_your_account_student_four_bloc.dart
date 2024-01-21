import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/setup_your_account_student_four_screen/models/setup_your_account_student_four_model.dart';part 'setup_your_account_student_four_event.dart';part 'setup_your_account_student_four_state.dart';/// A bloc that manages the state of a SetupYourAccountStudentFour according to the event that is dispatched to it.
class SetupYourAccountStudentFourBloc extends Bloc<SetupYourAccountStudentFourEvent, SetupYourAccountStudentFourState> {SetupYourAccountStudentFourBloc(SetupYourAccountStudentFourState initialState) : super(initialState) { on<SetupYourAccountStudentFourInitialEvent>(_onInitialize); }

_onInitialize(SetupYourAccountStudentFourInitialEvent event, Emitter<SetupYourAccountStudentFourState> emit, ) async  {  } 
 }
