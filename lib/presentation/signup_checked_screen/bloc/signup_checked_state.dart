// ignore_for_file: must_be_immutable

part of 'signup_checked_bloc.dart';

/// Represents the state of SignupChecked in the application.
class SignupCheckedState extends Equatable {
  final TextEditingController? firstNameEditTextController; // Added controller for first name
  final TextEditingController? lastNameEditTextController;
  final TextEditingController? emailEditTextController;
  final TextEditingController? passwordEditTextController;
  final TextEditingController? confirmPasswordEditTextController;

  final bool isShowPassword;
  final bool isShowPassword1;

  // New properties for form submission status
  final bool isFormSubmissionInProgress;
  final bool isFormSubmissionSuccessful;

  final SignupCheckedModel? signupCheckedModelObj;

  SignupCheckedState({
    this.firstNameEditTextController,  // Added controller for first name
    this.lastNameEditTextController,
    this.emailEditTextController,
    this.passwordEditTextController,
    this.confirmPasswordEditTextController,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.isFormSubmissionInProgress = false,
    this.isFormSubmissionSuccessful = false,
    this.signupCheckedModelObj,
  });

  @override
  List<Object?> get props => [
    firstNameEditTextController,  // Add first name controller to props
    lastNameEditTextController,
    emailEditTextController,
    passwordEditTextController,
    confirmPasswordEditTextController,
    isShowPassword,
    isShowPassword1,
    isFormSubmissionInProgress,
    isFormSubmissionSuccessful,
    signupCheckedModelObj,
  ];

  SignupCheckedState copyWith({
    TextEditingController? firstNameEditTextController,  // Parameter for first name controller
    TextEditingController? lastNameEditTextController,
    TextEditingController? emailEditTextController,
    TextEditingController? passwordEditTextController,
    TextEditingController? confirmPasswordEditTextController,
    bool? isShowPassword,
    bool? isShowPassword1,
    bool? isFormSubmissionInProgress,
    bool? isFormSubmissionSuccessful,
    SignupCheckedModel? signupCheckedModelObj,
  }) {
    return SignupCheckedState(
      firstNameEditTextController:  // Assign first name controller
      firstNameEditTextController ?? this.firstNameEditTextController,
      lastNameEditTextController:   // Assign last name controller
      lastNameEditTextController ?? this.lastNameEditTextController,
      emailEditTextController:
      emailEditTextController ?? this.emailEditTextController,
      passwordEditTextController:
      passwordEditTextController ?? this.passwordEditTextController,
      confirmPasswordEditTextController: confirmPasswordEditTextController ??
          this.confirmPasswordEditTextController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      isFormSubmissionInProgress: isFormSubmissionInProgress ?? this.isFormSubmissionInProgress,
      isFormSubmissionSuccessful: isFormSubmissionSuccessful ?? this.isFormSubmissionSuccessful,
      signupCheckedModelObj:
      signupCheckedModelObj ?? this.signupCheckedModelObj,
    );
  }
}
