// ignore_for_file: must_be_immutable

part of 'gmail_visiblepassword_login_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///GmailVisiblepasswordLogin widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class GmailVisiblepasswordLoginEvent extends Equatable {}

/// Event that is dispatched when the GmailVisiblepasswordLogin widget is first created.
class GmailVisiblepasswordLoginInitialEvent
    extends GmailVisiblepasswordLoginEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends GmailVisiblepasswordLoginEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
