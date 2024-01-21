// ignore_for_file: must_be_immutable

part of 'search_an_event_time_bloc.dart';

/// Represents the state of SearchAnEventTime in the application.
class SearchAnEventTimeState extends Equatable {
  SearchAnEventTimeState({
    this.editTextController,
    this.searchAnEventTimeModelObj,
  });

  TextEditingController? editTextController;

  SearchAnEventTimeModel? searchAnEventTimeModelObj;

  @override
  List<Object?> get props => [
        editTextController,
        searchAnEventTimeModelObj,
      ];
  SearchAnEventTimeState copyWith({
    TextEditingController? editTextController,
    SearchAnEventTimeModel? searchAnEventTimeModelObj,
  }) {
    return SearchAnEventTimeState(
      editTextController: editTextController ?? this.editTextController,
      searchAnEventTimeModelObj:
          searchAnEventTimeModelObj ?? this.searchAnEventTimeModelObj,
    );
  }
}
