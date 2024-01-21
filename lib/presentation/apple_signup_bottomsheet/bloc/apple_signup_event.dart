// ignore_for_file: must_be_immutable

part of 'apple_signup_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AppleSignup widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AppleSignupEvent extends Equatable {}

/// Event that is dispatched when the AppleSignup widget is first created.
class AppleSignupInitialEvent extends AppleSignupEvent {
  @override
  List<Object?> get props => [];
}
