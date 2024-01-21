// ignore_for_file: must_be_immutable

part of 'signup_bloc.dart';

/// Represents the state of Signup in the application.
class SignupState extends Equatable {    final bool signupSuccess;

  SignupState({
    this.emailEditTextController,
    this.firstNameEditTextController,  // Added controller for first name
    this.lastNameEditTextController,   // Added controller for last name
    this.passwordEditTextController,
    this.confirmPasswordEditTextController,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.signupModelObj,
    this.signupSuccess = false,
  });

  TextEditingController? emailEditTextController;
  TextEditingController? firstNameEditTextController;  // Declare first name controller
  TextEditingController? lastNameEditTextController;   // Declare last name controller
  TextEditingController? passwordEditTextController;
  TextEditingController? confirmPasswordEditTextController;

  SignupModel? signupModelObj;

  bool isShowPassword;
  bool isShowPassword1;

  @override
  List<Object?> get props => [
        emailEditTextController,
        firstNameEditTextController,  // Add first name controller to props
        lastNameEditTextController,   // Add last name controller to props
        passwordEditTextController,
        confirmPasswordEditTextController,
        isShowPassword,
        isShowPassword1,
        signupModelObj,
      ];

  SignupState copyWith({
    TextEditingController? emailEditTextController,
    TextEditingController? firstNameEditTextController,  // Parameter for first name controller
    TextEditingController? lastNameEditTextController,   // Parameter for last name controller
    TextEditingController? passwordEditTextController,
    TextEditingController? confirmPasswordEditTextController,
    bool? isShowPassword,
    bool? isShowPassword1,
    bool? signupSuccess,
    SignupModel? signupModelObj,
  }) {
    return SignupState(
      emailEditTextController:
          emailEditTextController ?? this.emailEditTextController,
      firstNameEditTextController:  // Assign first name controller
          firstNameEditTextController ?? this.firstNameEditTextController,
      lastNameEditTextController:   // Assign last name controller
          lastNameEditTextController ?? this.lastNameEditTextController,
      passwordEditTextController:
          passwordEditTextController ?? this.passwordEditTextController,
      confirmPasswordEditTextController: confirmPasswordEditTextController ??
          this.confirmPasswordEditTextController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      signupModelObj: signupModelObj ?? this.signupModelObj,
      signupSuccess: signupSuccess ?? this.signupSuccess,

    );
  }
}
