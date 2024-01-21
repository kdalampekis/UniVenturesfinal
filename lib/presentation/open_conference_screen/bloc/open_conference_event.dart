// ignore_for_file: must_be_immutable

part of 'open_conference_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OpenConference widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OpenConferenceEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class OpenConferenceInitialEvent extends OpenConferenceEvent {}

class BookEvent extends OpenConferenceEvent {
  final String eventId;
  BookEvent({required this.eventId});
}

class FavoriteEvent extends OpenConferenceEvent {
  final String eventId;
  FavoriteEvent({required this.eventId});
}
