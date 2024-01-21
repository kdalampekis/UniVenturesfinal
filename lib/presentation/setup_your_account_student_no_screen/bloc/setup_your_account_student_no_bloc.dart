import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/setup_your_account_student_no_screen/models/setup_your_account_student_no_model.dart';part 'setup_your_account_student_no_event.dart';part 'setup_your_account_student_no_state.dart';/// A bloc that manages the state of a SetupYourAccountStudentNo according to the event that is dispatched to it.
class SetupYourAccountStudentNoBloc extends Bloc<SetupYourAccountStudentNoEvent, SetupYourAccountStudentNoState> {SetupYourAccountStudentNoBloc(SetupYourAccountStudentNoState initialState) : super(initialState) { on<SetupYourAccountStudentNoInitialEvent>(_onInitialize); }

_onInitialize(SetupYourAccountStudentNoInitialEvent event, Emitter<SetupYourAccountStudentNoState> emit, ) async  { emit(state.copyWith(questionOneController: TextEditingController(), questionTwoController: TextEditingController())); } 
 }
