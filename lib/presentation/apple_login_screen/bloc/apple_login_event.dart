// ignore_for_file: must_be_immutable

part of 'apple_login_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AppleLogin widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AppleLoginEvent extends Equatable {}

/// Event that is dispatched when the AppleLogin widget is first created.
class AppleLoginInitialEvent extends AppleLoginEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends AppleLoginEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
