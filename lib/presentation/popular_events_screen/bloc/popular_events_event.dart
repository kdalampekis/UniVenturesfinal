// ignore_for_file: must_be_immutable

part of 'popular_events_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PopularEvents widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PopularEventsEvent extends Equatable {}

/// Event that is dispatched when the PopularEvents widget is first created.
class PopularEventsInitialEvent extends PopularEventsEvent {
  @override
  List<Object?> get props => [];
}
