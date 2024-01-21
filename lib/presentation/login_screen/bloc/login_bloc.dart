import 'package:equatable/equatable.dart'; 
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:kwstas_s_application2/presentation/database';
import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/login_screen/models/login_model.dart';part 'login_event.dart';part 'login_state.dart';/// A bloc that manages the state of a Login according to the event that is dispatched to it.



class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState()) {
    on<LoginInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<LoginAttemptEvent>(_onLoginAttempt);
  }

  void _onLoginAttempt(LoginAttemptEvent event, Emitter<LoginState> emit) async {
    try {
      // Query the database for a user with the given credentials
      final dbHelper = DatabaseHelper.instance;
      var user = await dbHelper.getUserByEmailAndPassword(event.email, event.password);
      
      if (user != null) {
        // Successful login
        emit(state.copyWith(loginSuccess: true));
      } else {
        // Failed login
        emit(state.copyWith(loginSuccess: false));
      }
    } catch (error) {
      emit(state.copyWith(loginSuccess: false));
    }
  }

  void _changePasswordVisibility(ChangePasswordVisibilityEvent event, Emitter<LoginState> emit) {
    emit(state.copyWith(isShowPassword: event.value));
  }

  void _onInitialize(LoginInitialEvent event, Emitter<LoginState> emit) {
    emit(state.copyWith(
      emailController: TextEditingController(),
      passwordController: TextEditingController(),
      isShowPassword: true
    ));
  }
}
