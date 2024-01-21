import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/gmail_visiblepassword_login_screen/models/gmail_visiblepassword_login_model.dart';part 'gmail_visiblepassword_login_event.dart';part 'gmail_visiblepassword_login_state.dart';/// A bloc that manages the state of a GmailVisiblepasswordLogin according to the event that is dispatched to it.
class GmailVisiblepasswordLoginBloc extends Bloc<GmailVisiblepasswordLoginEvent, GmailVisiblepasswordLoginState> {GmailVisiblepasswordLoginBloc(GmailVisiblepasswordLoginState initialState) : super(initialState) { on<GmailVisiblepasswordLoginInitialEvent>(_onInitialize); on<ChangeCheckBoxEvent>(_changeCheckBox); }

_changeCheckBox(ChangeCheckBoxEvent event, Emitter<GmailVisiblepasswordLoginState> emit, ) { emit(state.copyWith(showPassword: event.value)); } 
_onInitialize(GmailVisiblepasswordLoginInitialEvent event, Emitter<GmailVisiblepasswordLoginState> emit, ) async  { emit(state.copyWith(passwordController: TextEditingController(), showPassword: false)); } 
 }
