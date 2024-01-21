// ignore_for_file: must_be_immutable

part of 'tedxaueb_pangea_main_event_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TedxauebPangeaMainEvent widget.
///
/// Events must be immutable and implement the [Equatable] interface.

@immutable
abstract class TedxauebPangeaMainEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class TedxauebPangeaMainInitialEvent extends TedxauebPangeaMainEvent {}

class BookEvent extends TedxauebPangeaMainEvent {
  final String eventId;
  BookEvent({required this.eventId});
}

class FavoriteEvent extends TedxauebPangeaMainEvent {
  final String eventId;
  FavoriteEvent({required this.eventId});
}
