// ignore_for_file: must_be_immutable

part of 'gmail_visiblepassword_signup_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///GmailVisiblepasswordSignup widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class GmailVisiblepasswordSignupEvent extends Equatable {}

/// Event that is dispatched when the GmailVisiblepasswordSignup widget is first created.
class GmailVisiblepasswordSignupInitialEvent
    extends GmailVisiblepasswordSignupEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends GmailVisiblepasswordSignupEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
