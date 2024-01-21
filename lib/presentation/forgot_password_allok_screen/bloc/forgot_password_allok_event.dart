// ignore_for_file: must_be_immutable

part of 'forgot_password_allok_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ForgotPasswordAllok widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ForgotPasswordAllokEvent extends Equatable {}

/// Event that is dispatched when the ForgotPasswordAllok widget is first created.
class ForgotPasswordAllokInitialEvent extends ForgotPasswordAllokEvent {
  @override
  List<Object?> get props => [];
}
