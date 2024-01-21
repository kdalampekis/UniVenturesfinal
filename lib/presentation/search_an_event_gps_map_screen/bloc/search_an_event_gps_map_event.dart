// ignore_for_file: must_be_immutable

part of 'search_an_event_gps_map_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchAnEventGpsMap widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchAnEventGpsMapEvent extends Equatable {}

/// Event that is dispatched when the SearchAnEventGpsMap widget is first created.
class SearchAnEventGpsMapInitialEvent extends SearchAnEventGpsMapEvent {
  @override
  List<Object?> get props => [];
}
