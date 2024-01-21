// ignore_for_file: must_be_immutable

part of 'login_error_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LoginError widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoginErrorEvent extends Equatable {}

/// Event that is dispatched when the LoginError widget is first created.
class LoginErrorInitialEvent extends LoginErrorEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends LoginErrorEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
