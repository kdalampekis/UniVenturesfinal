// ignore_for_file: must_be_immutable

part of 'sth_went_wrong_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SthWentWrong widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SthWentWrongEvent extends Equatable {}

/// Event that is dispatched when the SthWentWrong widget is first created.
class SthWentWrongInitialEvent extends SthWentWrongEvent {
  @override
  List<Object?> get props => [];
}
