import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/gmail_password_login_screen/models/gmail_password_login_model.dart';part 'gmail_password_login_event.dart';part 'gmail_password_login_state.dart';/// A bloc that manages the state of a GmailPasswordLogin according to the event that is dispatched to it.
class GmailPasswordLoginBloc extends Bloc<GmailPasswordLoginEvent, GmailPasswordLoginState> {GmailPasswordLoginBloc(GmailPasswordLoginState initialState) : super(initialState) { on<GmailPasswordLoginInitialEvent>(_onInitialize); }

_onInitialize(GmailPasswordLoginInitialEvent event, Emitter<GmailPasswordLoginState> emit, ) async  { emit(state.copyWith(passwordController: TextEditingController())); } 
 }
