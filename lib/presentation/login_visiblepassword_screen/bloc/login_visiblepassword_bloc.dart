import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/login_visiblepassword_screen/models/login_visiblepassword_model.dart';part 'login_visiblepassword_event.dart';part 'login_visiblepassword_state.dart';/// A bloc that manages the state of a LoginVisiblepassword according to the event that is dispatched to it.
class LoginVisiblepasswordBloc extends Bloc<LoginVisiblepasswordEvent, LoginVisiblepasswordState> {LoginVisiblepasswordBloc(LoginVisiblepasswordState initialState) : super(initialState) { on<LoginVisiblepasswordInitialEvent>(_onInitialize); on<ChangePasswordVisibilityEvent>(_changePasswordVisibility); }

_changePasswordVisibility(ChangePasswordVisibilityEvent event, Emitter<LoginVisiblepasswordState> emit, ) { emit(state.copyWith(isShowPassword: event.value)); } 
_onInitialize(LoginVisiblepasswordInitialEvent event, Emitter<LoginVisiblepasswordState> emit, ) async  { emit(state.copyWith(emailController: TextEditingController(), passwordController: TextEditingController(), isShowPassword: true)); } 
 }
