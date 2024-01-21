import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/gmail_visiblepassword_signup_screen/models/gmail_visiblepassword_signup_model.dart';part 'gmail_visiblepassword_signup_event.dart';part 'gmail_visiblepassword_signup_state.dart';/// A bloc that manages the state of a GmailVisiblepasswordSignup according to the event that is dispatched to it.
class GmailVisiblepasswordSignupBloc extends Bloc<GmailVisiblepasswordSignupEvent, GmailVisiblepasswordSignupState> {GmailVisiblepasswordSignupBloc(GmailVisiblepasswordSignupState initialState) : super(initialState) { on<GmailVisiblepasswordSignupInitialEvent>(_onInitialize); on<ChangeCheckBoxEvent>(_changeCheckBox); }

_changeCheckBox(ChangeCheckBoxEvent event, Emitter<GmailVisiblepasswordSignupState> emit, ) { emit(state.copyWith(showPassword: event.value)); } 
_onInitialize(GmailVisiblepasswordSignupInitialEvent event, Emitter<GmailVisiblepasswordSignupState> emit, ) async  { emit(state.copyWith(passwordController: TextEditingController(), showPassword: false)); } 
 }
