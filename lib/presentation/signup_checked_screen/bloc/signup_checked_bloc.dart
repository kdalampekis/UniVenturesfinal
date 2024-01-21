import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:kwstas_s_application2/presentation/signup_checked_screen/models/signup_checked_model.dart';
import 'package:kwstas_s_application2/presentation/database';
part 'signup_checked_event.dart';
part 'signup_checked_state.dart';

class SignupCheckedBloc extends Bloc<SignupCheckedEvent, SignupCheckedState> {
  final DatabaseHelper dbHelper = DatabaseHelper.instance;

  SignupCheckedBloc(SignupCheckedState initialState) : super(initialState) {
    on<SignupCheckedInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<ChangePasswordVisibilityEvent1>(_changePasswordVisibility1);
    on<SubmitSignupCheckedEvent>(_onSubmitSignupChecked);
  }
  void _onInitialize(SignupCheckedInitialEvent event, Emitter<SignupCheckedState> emit) async {
    final firstNameController = TextEditingController();
    final lastNameController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final confirmPasswordController = TextEditingController();

    emit(state.copyWith(
      emailEditTextController: emailController,
      firstNameEditTextController: firstNameController,
      lastNameEditTextController: lastNameController,
      passwordEditTextController: passwordController,
      confirmPasswordEditTextController: confirmPasswordController,
      isShowPassword: true,
      isShowPassword1: true,
    ));
  }


  void _changePasswordVisibility(ChangePasswordVisibilityEvent event, Emitter<SignupCheckedState> emit) {
    emit(state.copyWith(isShowPassword: event.value));
  }

  void _changePasswordVisibility1(ChangePasswordVisibilityEvent1 event, Emitter<SignupCheckedState> emit) {
    emit(state.copyWith(isShowPassword1: event.value));
  }

  Future<void> _onSubmitSignupChecked(SubmitSignupCheckedEvent event, Emitter<SignupCheckedState> emit) async {
    String firstName = state.firstNameEditTextController!.text;
    String lastName = state.lastNameEditTextController!.text;
    String email = state.emailEditTextController!.text;
    String password = state.passwordEditTextController!.text;


    try {
    // Insert data into the database
    Map<String, dynamic> row = {
      DatabaseHelper.columnName: firstName,
      DatabaseHelper.columnLastName: lastName,
      DatabaseHelper.columnEmail: email,
      DatabaseHelper.columnPassword: password,
    };
    await dbHelper.insert(row);
    emit(state.copyWith(isFormSubmissionSuccessful: true));
  } catch (error) {
    emit(state.copyWith(isFormSubmissionSuccessful: false));
  }
}

}
