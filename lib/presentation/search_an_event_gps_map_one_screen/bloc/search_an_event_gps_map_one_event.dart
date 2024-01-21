// ignore_for_file: must_be_immutable

part of 'search_an_event_gps_map_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchAnEventGpsMapOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchAnEventGpsMapOneEvent extends Equatable {}

/// Event that is dispatched when the SearchAnEventGpsMapOne widget is first created.
class SearchAnEventGpsMapOneInitialEvent extends SearchAnEventGpsMapOneEvent {
  @override
  List<Object?> get props => [];
}
