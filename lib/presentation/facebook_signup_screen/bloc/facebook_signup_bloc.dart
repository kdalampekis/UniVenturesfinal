import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/facebook_signup_screen/models/facebook_signup_model.dart';part 'facebook_signup_event.dart';part 'facebook_signup_state.dart';/// A bloc that manages the state of a FacebookSignup according to the event that is dispatched to it.
class FacebookSignupBloc extends Bloc<FacebookSignupEvent, FacebookSignupState> {FacebookSignupBloc(FacebookSignupState initialState) : super(initialState) { on<FacebookSignupInitialEvent>(_onInitialize); on<ChangePasswordVisibilityEvent>(_changePasswordVisibility); }

_changePasswordVisibility(ChangePasswordVisibilityEvent event, Emitter<FacebookSignupState> emit, ) { emit(state.copyWith(isShowPassword: event.value)); } 
_onInitialize(FacebookSignupInitialEvent event, Emitter<FacebookSignupState> emit, ) async  { emit(state.copyWith(phoneController: TextEditingController(), passwordController: TextEditingController(), isShowPassword: true)); } 
 }
