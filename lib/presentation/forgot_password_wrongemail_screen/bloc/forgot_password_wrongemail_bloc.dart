import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/forgot_password_wrongemail_screen/models/forgot_password_wrongemail_model.dart';part 'forgot_password_wrongemail_event.dart';part 'forgot_password_wrongemail_state.dart';/// A bloc that manages the state of a ForgotPasswordWrongemail according to the event that is dispatched to it.
class ForgotPasswordWrongemailBloc extends Bloc<ForgotPasswordWrongemailEvent, ForgotPasswordWrongemailState> {ForgotPasswordWrongemailBloc(ForgotPasswordWrongemailState initialState) : super(initialState) { on<ForgotPasswordWrongemailInitialEvent>(_onInitialize); }

_onInitialize(ForgotPasswordWrongemailInitialEvent event, Emitter<ForgotPasswordWrongemailState> emit, ) async  { emit(state.copyWith(emailController: TextEditingController())); } 
 }
