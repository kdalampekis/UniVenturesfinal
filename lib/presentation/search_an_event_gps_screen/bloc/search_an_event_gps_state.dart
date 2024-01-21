// ignore_for_file: must_be_immutable

part of 'search_an_event_gps_bloc.dart';

/// Represents the state of SearchAnEventGps in the application.
class SearchAnEventGpsState extends Equatable {
  SearchAnEventGpsState({this.searchAnEventGpsModelObj});

  SearchAnEventGpsModel? searchAnEventGpsModelObj;

  @override
  List<Object?> get props => [
        searchAnEventGpsModelObj,
      ];
  SearchAnEventGpsState copyWith(
      {SearchAnEventGpsModel? searchAnEventGpsModelObj}) {
    return SearchAnEventGpsState(
      searchAnEventGpsModelObj:
          searchAnEventGpsModelObj ?? this.searchAnEventGpsModelObj,
    );
  }
}
