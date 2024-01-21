// ignore_for_file: must_be_immutable

part of 'forgot_password_wrongemail_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ForgotPasswordWrongemail widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ForgotPasswordWrongemailEvent extends Equatable {}

/// Event that is dispatched when the ForgotPasswordWrongemail widget is first created.
class ForgotPasswordWrongemailInitialEvent
    extends ForgotPasswordWrongemailEvent {
  @override
  List<Object?> get props => [];
}
