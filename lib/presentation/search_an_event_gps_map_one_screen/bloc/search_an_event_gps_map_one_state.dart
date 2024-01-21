// ignore_for_file: must_be_immutable

part of 'search_an_event_gps_map_one_bloc.dart';

/// Represents the state of SearchAnEventGpsMapOne in the application.
class SearchAnEventGpsMapOneState extends Equatable {
  SearchAnEventGpsMapOneState({this.searchAnEventGpsMapOneModelObj});

  SearchAnEventGpsMapOneModel? searchAnEventGpsMapOneModelObj;

  @override
  List<Object?> get props => [
        searchAnEventGpsMapOneModelObj,
      ];
  SearchAnEventGpsMapOneState copyWith(
      {SearchAnEventGpsMapOneModel? searchAnEventGpsMapOneModelObj}) {
    return SearchAnEventGpsMapOneState(
      searchAnEventGpsMapOneModelObj:
          searchAnEventGpsMapOneModelObj ?? this.searchAnEventGpsMapOneModelObj,
    );
  }
}
