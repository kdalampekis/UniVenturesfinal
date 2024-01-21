part of 'search_an_event_bloc.dart';

abstract class SearchAnEventEvent extends Equatable {
  const SearchAnEventEvent();

  @override
  List<Object> get props => [];
}

class SearchAnEventInitialized extends SearchAnEventEvent {}

class PerformSearch extends SearchAnEventEvent {
  final String searchTerm;

  const PerformSearch(this.searchTerm);

  @override
  List<Object> get props => [searchTerm];
}
