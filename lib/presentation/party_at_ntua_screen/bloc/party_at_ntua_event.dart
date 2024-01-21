// ignore_for_file: must_be_immutable

part of 'party_at_ntua_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PartyAtNtua widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PartyAtNtuaEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class PartyAtNtuaInitialEvent extends PartyAtNtuaEvent {}

class BookEvent extends PartyAtNtuaEvent {
  final String eventId;
  BookEvent({required this.eventId});
}

class FavoriteEvent extends PartyAtNtuaEvent {
  final String eventId;
  FavoriteEvent({required this.eventId});
}
