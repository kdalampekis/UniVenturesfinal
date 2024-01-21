import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/signup_uncheckerror_screen/models/signup_uncheckerror_model.dart';part 'signup_uncheckerror_event.dart';part 'signup_uncheckerror_state.dart';/// A bloc that manages the state of a SignupUncheckerror according to the event that is dispatched to it.
class SignupUncheckerrorBloc extends Bloc<SignupUncheckerrorEvent, SignupUncheckerrorState> {SignupUncheckerrorBloc(SignupUncheckerrorState initialState) : super(initialState) { on<SignupUncheckerrorInitialEvent>(_onInitialize); on<ChangePasswordVisibilityEvent>(_changePasswordVisibility); on<ChangePasswordVisibilityEvent1>(_changePasswordVisibility1); }

_changePasswordVisibility(ChangePasswordVisibilityEvent event, Emitter<SignupUncheckerrorState> emit, ) { emit(state.copyWith(isShowPassword: event.value)); } 
_changePasswordVisibility1(ChangePasswordVisibilityEvent1 event, Emitter<SignupUncheckerrorState> emit, ) { emit(state.copyWith(isShowPassword1: event.value)); } 
_onInitialize(SignupUncheckerrorInitialEvent event, Emitter<SignupUncheckerrorState> emit, ) async  { emit(state.copyWith(emailEditTextController: TextEditingController(), passwordEditTextController: TextEditingController(), confirmPasswordEditTextController: TextEditingController(), isShowPassword: true, isShowPassword1: true)); } 
 }