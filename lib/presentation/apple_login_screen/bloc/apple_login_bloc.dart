import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/apple_login_screen/models/apple_login_model.dart';part 'apple_login_event.dart';part 'apple_login_state.dart';/// A bloc that manages the state of a AppleLogin according to the event that is dispatched to it.
class AppleLoginBloc extends Bloc<AppleLoginEvent, AppleLoginState> {AppleLoginBloc(AppleLoginState initialState) : super(initialState) { on<AppleLoginInitialEvent>(_onInitialize); on<ChangePasswordVisibilityEvent>(_changePasswordVisibility); }

_changePasswordVisibility(ChangePasswordVisibilityEvent event, Emitter<AppleLoginState> emit, ) { emit(state.copyWith(isShowPassword: event.value)); } 
_onInitialize(AppleLoginInitialEvent event, Emitter<AppleLoginState> emit, ) async  { emit(state.copyWith(passwordController: TextEditingController(), isShowPassword: true)); } 
 }
