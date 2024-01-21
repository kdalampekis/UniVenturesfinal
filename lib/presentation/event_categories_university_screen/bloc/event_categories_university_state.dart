// ignore_for_file: must_be_immutable

part of 'event_categories_university_bloc.dart';

/// Represents the state of EventCategoriesUniversity in the application.
class EventCategoriesUniversityState extends Equatable {
  EventCategoriesUniversityState({this.eventCategoriesUniversityModelObj});

  EventCategoriesUniversityModel? eventCategoriesUniversityModelObj;

  @override
  List<Object?> get props => [
        eventCategoriesUniversityModelObj,
      ];
  EventCategoriesUniversityState copyWith(
      {EventCategoriesUniversityModel? eventCategoriesUniversityModelObj}) {
    return EventCategoriesUniversityState(
      eventCategoriesUniversityModelObj: eventCategoriesUniversityModelObj ??
          this.eventCategoriesUniversityModelObj,
    );
  }
}
