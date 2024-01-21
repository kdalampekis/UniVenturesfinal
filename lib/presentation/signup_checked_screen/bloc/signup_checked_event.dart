// ignore_for_file: must_be_immutable

part of 'signup_checked_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// SignupChecked widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignupCheckedEvent extends Equatable {}

/// Event that is dispatched when the SignupChecked widget is first created.
class SignupCheckedInitialEvent extends SignupCheckedEvent {
  @override
  List<Object?> get props => [];
}

/// Event for changing password visibility
class ChangePasswordVisibilityEvent extends SignupCheckedEvent {
  final bool value;

  ChangePasswordVisibilityEvent({required this.value});

  @override
  List<Object?> get props => [value];
}

/// Event for changing confirm password visibility
class ChangePasswordVisibilityEvent1 extends SignupCheckedEvent {
  final bool value;

  ChangePasswordVisibilityEvent1({required this.value});

  @override
  List<Object?> get props => [value];
}

/// Event for submitting the signup form
class SubmitSignupCheckedEvent extends SignupCheckedEvent {
  final String name;
  final String lastName;
  final String email;
  final String password;

  SubmitSignupCheckedEvent({
    required this.name,
    required this.lastName,
    required this.email,
    required this.password,
  });

  @override
  List<Object?> get props => [name, lastName, email, password];
}
