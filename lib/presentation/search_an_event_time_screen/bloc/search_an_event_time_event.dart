// ignore_for_file: must_be_immutable

part of 'search_an_event_time_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchAnEventTime widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchAnEventTimeEvent extends Equatable {}

/// Event that is dispatched when the SearchAnEventTime widget is first created.
class SearchAnEventTimeInitialEvent extends SearchAnEventTimeEvent {
  @override
  List<Object?> get props => [];
}
