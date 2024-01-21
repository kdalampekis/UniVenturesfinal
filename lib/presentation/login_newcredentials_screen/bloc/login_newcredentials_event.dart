// ignore_for_file: must_be_immutable

part of 'login_newcredentials_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LoginNewcredentials widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoginNewcredentialsEvent extends Equatable {}

/// Event that is dispatched when the LoginNewcredentials widget is first created.
class LoginNewcredentialsInitialEvent extends LoginNewcredentialsEvent {
  @override
  List<Object?> get props => [];
}
