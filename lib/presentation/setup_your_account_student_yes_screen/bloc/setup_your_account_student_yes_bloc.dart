import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/setup_your_account_student_yes_screen/models/setup_your_account_student_yes_model.dart';part 'setup_your_account_student_yes_event.dart';part 'setup_your_account_student_yes_state.dart';/// A bloc that manages the state of a SetupYourAccountStudentYes according to the event that is dispatched to it.
class SetupYourAccountStudentYesBloc extends Bloc<SetupYourAccountStudentYesEvent, SetupYourAccountStudentYesState> {SetupYourAccountStudentYesBloc(SetupYourAccountStudentYesState initialState) : super(initialState) { on<SetupYourAccountStudentYesInitialEvent>(_onInitialize); }

_onInitialize(SetupYourAccountStudentYesInitialEvent event, Emitter<SetupYourAccountStudentYesState> emit, ) async  { emit(state.copyWith(yesIamastudentController: TextEditingController(), fiftyEightController: TextEditingController())); } 
 }
