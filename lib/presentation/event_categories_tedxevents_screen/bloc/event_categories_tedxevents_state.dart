// ignore_for_file: must_be_immutable

part of 'event_categories_tedxevents_bloc.dart';

/// Represents the state of EventCategoriesTedxevents in the application.
class EventCategoriesTedxeventsState extends Equatable {
  EventCategoriesTedxeventsState({this.eventCategoriesTedxeventsModelObj});

  EventCategoriesTedxeventsModel? eventCategoriesTedxeventsModelObj;

  @override
  List<Object?> get props => [
        eventCategoriesTedxeventsModelObj,
      ];
  EventCategoriesTedxeventsState copyWith(
      {EventCategoriesTedxeventsModel? eventCategoriesTedxeventsModelObj}) {
    return EventCategoriesTedxeventsState(
      eventCategoriesTedxeventsModelObj: eventCategoriesTedxeventsModelObj ??
          this.eventCategoriesTedxeventsModelObj,
    );
  }
}
