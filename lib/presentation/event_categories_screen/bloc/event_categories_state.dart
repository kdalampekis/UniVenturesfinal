// ignore_for_file: must_be_immutable

part of 'event_categories_bloc.dart';

/// Represents the state of EventCategories in the application.
class EventCategoriesState extends Equatable {
  EventCategoriesState({this.eventCategoriesModelObj});

  EventCategoriesModel? eventCategoriesModelObj;

  @override
  List<Object?> get props => [
        eventCategoriesModelObj,
      ];
  EventCategoriesState copyWith(
      {EventCategoriesModel? eventCategoriesModelObj}) {
    return EventCategoriesState(
      eventCategoriesModelObj:
          eventCategoriesModelObj ?? this.eventCategoriesModelObj,
    );
  }
}
