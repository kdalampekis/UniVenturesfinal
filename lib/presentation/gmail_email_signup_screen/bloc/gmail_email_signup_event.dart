// ignore_for_file: must_be_immutable

part of 'gmail_email_signup_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///GmailEmailSignup widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class GmailEmailSignupEvent extends Equatable {}

/// Event that is dispatched when the GmailEmailSignup widget is first created.
class GmailEmailSignupInitialEvent extends GmailEmailSignupEvent {
  @override
  List<Object?> get props => [];
}
