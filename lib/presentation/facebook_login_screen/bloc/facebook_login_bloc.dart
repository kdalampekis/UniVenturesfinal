import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/facebook_login_screen/models/facebook_login_model.dart';part 'facebook_login_event.dart';part 'facebook_login_state.dart';/// A bloc that manages the state of a FacebookLogin according to the event that is dispatched to it.
class FacebookLoginBloc extends Bloc<FacebookLoginEvent, FacebookLoginState> {FacebookLoginBloc(FacebookLoginState initialState) : super(initialState) { on<FacebookLoginInitialEvent>(_onInitialize); on<ChangePasswordVisibilityEvent>(_changePasswordVisibility); }

_changePasswordVisibility(ChangePasswordVisibilityEvent event, Emitter<FacebookLoginState> emit, ) { emit(state.copyWith(isShowPassword: event.value)); } 
_onInitialize(FacebookLoginInitialEvent event, Emitter<FacebookLoginState> emit, ) async  { emit(state.copyWith(phoneController: TextEditingController(), passwordController: TextEditingController(), isShowPassword: true)); } 
 }
