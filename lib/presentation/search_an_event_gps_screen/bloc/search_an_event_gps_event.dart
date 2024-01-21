// ignore_for_file: must_be_immutable

part of 'search_an_event_gps_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchAnEventGps widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchAnEventGpsEvent extends Equatable {}

/// Event that is dispatched when the SearchAnEventGps widget is first created.
class SearchAnEventGpsInitialEvent extends SearchAnEventGpsEvent {
  @override
  List<Object?> get props => [];
}
