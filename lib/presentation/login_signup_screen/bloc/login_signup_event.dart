// ignore_for_file: must_be_immutable

part of 'login_signup_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LoginSignup widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoginSignupEvent extends Equatable {}

/// Event that is dispatched when the LoginSignup widget is first created.
class LoginSignupInitialEvent extends LoginSignupEvent {
  @override
  List<Object?> get props => [];
}

///Event that is dispatched when the user calls the https://nodedemo.dhiwise.co/device/auth/login API.
class CreateLoginEvent extends LoginSignupEvent {
  CreateLoginEvent();

  @override
  List<Object?> get props => [];
}
