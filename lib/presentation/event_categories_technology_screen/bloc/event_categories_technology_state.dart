// ignore_for_file: must_be_immutable

part of 'event_categories_technology_bloc.dart';

/// Represents the state of EventCategoriesTechnology in the application.
class EventCategoriesTechnologyState extends Equatable {
  EventCategoriesTechnologyState({this.eventCategoriesTechnologyModelObj});

  EventCategoriesTechnologyModel? eventCategoriesTechnologyModelObj;

  @override
  List<Object?> get props => [
        eventCategoriesTechnologyModelObj,
      ];
  EventCategoriesTechnologyState copyWith(
      {EventCategoriesTechnologyModel? eventCategoriesTechnologyModelObj}) {
    return EventCategoriesTechnologyState(
      eventCategoriesTechnologyModelObj: eventCategoriesTechnologyModelObj ??
          this.eventCategoriesTechnologyModelObj,
    );
  }
}
