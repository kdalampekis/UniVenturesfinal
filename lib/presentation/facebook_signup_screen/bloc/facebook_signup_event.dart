// ignore_for_file: must_be_immutable

part of 'facebook_signup_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FacebookSignup widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FacebookSignupEvent extends Equatable {}

/// Event that is dispatched when the FacebookSignup widget is first created.
class FacebookSignupInitialEvent extends FacebookSignupEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends FacebookSignupEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
