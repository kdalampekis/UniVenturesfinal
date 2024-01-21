// ignore_for_file: must_be_immutable

part of 'search_an_event_gps_map_bloc.dart';

/// Represents the state of SearchAnEventGpsMap in the application.
class SearchAnEventGpsMapState extends Equatable {
  SearchAnEventGpsMapState({this.searchAnEventGpsMapModelObj});

  SearchAnEventGpsMapModel? searchAnEventGpsMapModelObj;

  @override
  List<Object?> get props => [
        searchAnEventGpsMapModelObj,
      ];
  SearchAnEventGpsMapState copyWith(
      {SearchAnEventGpsMapModel? searchAnEventGpsMapModelObj}) {
    return SearchAnEventGpsMapState(
      searchAnEventGpsMapModelObj:
          searchAnEventGpsMapModelObj ?? this.searchAnEventGpsMapModelObj,
    );
  }
}
