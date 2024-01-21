// ignore_for_file: must_be_immutable

part of 'setup_your_accounttwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SetupYourAccounttwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SetupYourAccounttwoEvent extends Equatable {}

/// Event that is dispatched when the SetupYourAccounttwo widget is first created.
class SetupYourAccounttwoInitialEvent extends SetupYourAccounttwoEvent {
  @override
  List<Object?> get props => [];
}
