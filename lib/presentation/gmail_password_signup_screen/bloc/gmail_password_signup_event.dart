// ignore_for_file: must_be_immutable

part of 'gmail_password_signup_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///GmailPasswordSignup widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class GmailPasswordSignupEvent extends Equatable {}

/// Event that is dispatched when the GmailPasswordSignup widget is first created.
class GmailPasswordSignupInitialEvent extends GmailPasswordSignupEvent {
  @override
  List<Object?> get props => [];
}
