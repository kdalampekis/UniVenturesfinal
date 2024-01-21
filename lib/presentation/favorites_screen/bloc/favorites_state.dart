// ignore_for_file: must_be_immutable

part of 'favorites_bloc.dart';

/// Represents the state of Favorites in the application.
class FavoritesState extends Equatable {
  final List<Event> favoriteEvents;

  FavoritesState({this.favoriteEvents = const []});

  @override
  List<Object?> get props => [favoriteEvents];

  FavoritesState copyWith({List<Event>? favoriteEvents}) {
    return FavoritesState(
      favoriteEvents: favoriteEvents ?? this.favoriteEvents,
    );
  }
}

