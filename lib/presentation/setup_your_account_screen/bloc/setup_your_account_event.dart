// ignore_for_file: must_be_immutable

part of 'setup_your_account_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SetupYourAccount widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SetupYourAccountEvent extends Equatable {}

/// Event that is dispatched when the SetupYourAccount widget is first created.
class SetupYourAccountInitialEvent extends SetupYourAccountEvent {
  @override
  List<Object?> get props => [];
}
