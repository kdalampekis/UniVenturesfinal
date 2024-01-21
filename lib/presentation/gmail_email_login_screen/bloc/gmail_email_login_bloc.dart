import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/gmail_email_login_screen/models/gmail_email_login_model.dart';part 'gmail_email_login_event.dart';part 'gmail_email_login_state.dart';/// A bloc that manages the state of a GmailEmailLogin according to the event that is dispatched to it.
class GmailEmailLoginBloc extends Bloc<GmailEmailLoginEvent, GmailEmailLoginState> {GmailEmailLoginBloc(GmailEmailLoginState initialState) : super(initialState) { on<GmailEmailLoginInitialEvent>(_onInitialize); }

_onInitialize(GmailEmailLoginInitialEvent event, Emitter<GmailEmailLoginState> emit, ) async  { emit(state.copyWith(phoneController: TextEditingController())); } 
 }
