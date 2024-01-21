// ignore_for_file: must_be_immutable

part of 'popular_events_red_heart_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PopularEventsRedHeart widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PopularEventsRedHeartEvent extends Equatable {}

/// Event that is dispatched when the PopularEventsRedHeart widget is first created.
class PopularEventsRedHeartInitialEvent extends PopularEventsRedHeartEvent {
  @override
  List<Object?> get props => [];
}
