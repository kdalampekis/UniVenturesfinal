// ignore_for_file: must_be_immutable

part of 'login_visiblepassword_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LoginVisiblepassword widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoginVisiblepasswordEvent extends Equatable {}

/// Event that is dispatched when the LoginVisiblepassword widget is first created.
class LoginVisiblepasswordInitialEvent extends LoginVisiblepasswordEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends LoginVisiblepasswordEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
