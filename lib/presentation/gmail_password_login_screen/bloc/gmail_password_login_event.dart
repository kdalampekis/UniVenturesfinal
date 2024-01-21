// ignore_for_file: must_be_immutable

part of 'gmail_password_login_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///GmailPasswordLogin widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class GmailPasswordLoginEvent extends Equatable {}

/// Event that is dispatched when the GmailPasswordLogin widget is first created.
class GmailPasswordLoginInitialEvent extends GmailPasswordLoginEvent {
  @override
  List<Object?> get props => [];
}
