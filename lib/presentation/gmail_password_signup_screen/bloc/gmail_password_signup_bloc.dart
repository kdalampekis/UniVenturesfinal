import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/gmail_password_signup_screen/models/gmail_password_signup_model.dart';part 'gmail_password_signup_event.dart';part 'gmail_password_signup_state.dart';/// A bloc that manages the state of a GmailPasswordSignup according to the event that is dispatched to it.
class GmailPasswordSignupBloc extends Bloc<GmailPasswordSignupEvent, GmailPasswordSignupState> {GmailPasswordSignupBloc(GmailPasswordSignupState initialState) : super(initialState) { on<GmailPasswordSignupInitialEvent>(_onInitialize); }

_onInitialize(GmailPasswordSignupInitialEvent event, Emitter<GmailPasswordSignupState> emit, ) async  { emit(state.copyWith(passwordController: TextEditingController())); } 
 }
