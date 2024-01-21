// ignore_for_file: must_be_immutable

part of 'search_an_event_bloc.dart';


class SearchAnEventState extends Equatable {
  final List<Map<String, String>> availableEvents;
  final String? errorMessage;
  final TextEditingController searchController;

  SearchAnEventState(this.availableEvents, this.errorMessage, this.searchController);

  SearchAnEventState copyWith({
    List<Map<String, String>>? availableEvents,
    String? errorMessage,
    TextEditingController? editTextController,
  }) {
    return SearchAnEventState(
      availableEvents ?? this.availableEvents,
      errorMessage ?? this.errorMessage,
      editTextController ?? this.searchController,
    );
  }

  @override
  List<Object?> get props => [availableEvents, errorMessage, searchController];
}

