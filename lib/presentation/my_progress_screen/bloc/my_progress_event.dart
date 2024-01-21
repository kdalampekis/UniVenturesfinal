// ignore_for_file: must_be_immutable

part of 'my_progress_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyProgress widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyProgressEvent extends Equatable {}

/// Event that is dispatched when the MyProgress widget is first created.
class MyProgressInitialEvent extends MyProgressEvent {
  @override
  List<Object?> get props => [];
}
