// ignore_for_file: must_be_immutable

part of 'gmail_email_login_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///GmailEmailLogin widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class GmailEmailLoginEvent extends Equatable {}

/// Event that is dispatched when the GmailEmailLogin widget is first created.
class GmailEmailLoginInitialEvent extends GmailEmailLoginEvent {
  @override
  List<Object?> get props => [];
}
