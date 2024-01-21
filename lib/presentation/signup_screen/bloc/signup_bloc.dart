import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:kwstas_s_application2/presentation/database';

import '/core/app_export.dart';
import 'package:kwstas_s_application2/presentation/signup_screen/models/signup_model.dart';
part 'signup_event.dart';
part 'signup_state.dart';

/// A bloc that manages the state of a Signup according to the event that is dispatched to it.
class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc(SignupState initialState) : super(initialState) {
    on<SignupInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<ChangePasswordVisibilityEvent1>(_changePasswordVisibility1);
  }  final storage = new FlutterSecureStorage(); // Create an instance of secure storage

void _onSubmitSignup(SubmitSignupEvent event, Emitter<SignupState> emit) async {
  try {
    // Insert data into the SQLite database
    final dbHelper = DatabaseHelper.instance;
    Map<String, dynamic> row = {
      DatabaseHelper.columnName: event.name,
      DatabaseHelper.columnLastName: event.lastName,
      DatabaseHelper.columnEmail: event.email,
      DatabaseHelper.columnPassword: event.password,
    };
    await dbHelper.insert(row);
    
    // Emit success state
    emit(state.copyWith(signupSuccess: true));
    
    // TODO: Add your backend call here to store data remotely

  } catch (error) {
    // Emit failure state
    emit(state.copyWith(signupSuccess: false));
    // Handle any errors here
  }
}



  _changePasswordVisibility(ChangePasswordVisibilityEvent event, Emitter<SignupState> emit) {
    emit(state.copyWith(isShowPassword: event.value));
  }

  _changePasswordVisibility1(ChangePasswordVisibilityEvent1 event, Emitter<SignupState> emit) {
    emit(state.copyWith(isShowPassword1: event.value));
  }

  _onInitialize(SignupInitialEvent event, Emitter<SignupState> emit) async {
    emit(state.copyWith(
      emailEditTextController: TextEditingController(),
      firstNameEditTextController: TextEditingController(),
      lastNameEditTextController: TextEditingController(), 
      passwordEditTextController: TextEditingController(),
      confirmPasswordEditTextController: TextEditingController(),
      isShowPassword: true,
      isShowPassword1: true
    ));
  }
}
