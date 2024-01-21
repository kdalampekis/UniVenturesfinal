import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/forgot_password_allok_screen/models/forgot_password_allok_model.dart';part 'forgot_password_allok_event.dart';part 'forgot_password_allok_state.dart';/// A bloc that manages the state of a ForgotPasswordAllok according to the event that is dispatched to it.
class ForgotPasswordAllokBloc extends Bloc<ForgotPasswordAllokEvent, ForgotPasswordAllokState> {ForgotPasswordAllokBloc(ForgotPasswordAllokState initialState) : super(initialState) { on<ForgotPasswordAllokInitialEvent>(_onInitialize); }

_onInitialize(ForgotPasswordAllokInitialEvent event, Emitter<ForgotPasswordAllokState> emit, ) async  {  } 
 }
