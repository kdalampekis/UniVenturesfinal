// ignore_for_file: must_be_immutable

part of 'techconnect_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Techconnect widget.
///
/// Events must be immutable and implement the [Equatable] interface.

@immutable
abstract class TechconnectEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class TechconnectInitialEvent extends TechconnectEvent {}

class BookEvent extends TechconnectEvent {
  final String eventId;
  BookEvent({required this.eventId});
}

class FavoriteEvent extends TechconnectEvent {
  final String eventId;
  FavoriteEvent({required this.eventId});
}
