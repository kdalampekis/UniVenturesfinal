import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/gmail_email_signup_screen/models/gmail_email_signup_model.dart';part 'gmail_email_signup_event.dart';part 'gmail_email_signup_state.dart';/// A bloc that manages the state of a GmailEmailSignup according to the event that is dispatched to it.
class GmailEmailSignupBloc extends Bloc<GmailEmailSignupEvent, GmailEmailSignupState> {GmailEmailSignupBloc(GmailEmailSignupState initialState) : super(initialState) { on<GmailEmailSignupInitialEvent>(_onInitialize); }

_onInitialize(GmailEmailSignupInitialEvent event, Emitter<GmailEmailSignupState> emit, ) async  { emit(state.copyWith(phoneController: TextEditingController())); } 
 }
