// ignore_for_file: must_be_immutable

part of 'signup_uncheckerror_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignupUncheckerror widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignupUncheckerrorEvent extends Equatable {}

/// Event that is dispatched when the SignupUncheckerror widget is first created.
class SignupUncheckerrorInitialEvent extends SignupUncheckerrorEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends SignupUncheckerrorEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent1 extends SignupUncheckerrorEvent {
  ChangePasswordVisibilityEvent1({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
