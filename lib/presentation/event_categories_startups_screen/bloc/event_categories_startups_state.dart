// ignore_for_file: must_be_immutable

part of 'event_categories_startups_bloc.dart';

/// Represents the state of EventCategoriesStartups in the application.
class EventCategoriesStartupsState extends Equatable {
  EventCategoriesStartupsState({this.eventCategoriesStartupsModelObj});

  EventCategoriesStartupsModel? eventCategoriesStartupsModelObj;

  @override
  List<Object?> get props => [
        eventCategoriesStartupsModelObj,
      ];
  EventCategoriesStartupsState copyWith(
      {EventCategoriesStartupsModel? eventCategoriesStartupsModelObj}) {
    return EventCategoriesStartupsState(
      eventCategoriesStartupsModelObj: eventCategoriesStartupsModelObj ??
          this.eventCategoriesStartupsModelObj,
    );
  }
}
