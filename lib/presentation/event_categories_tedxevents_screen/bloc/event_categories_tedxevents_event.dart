// ignore_for_file: must_be_immutable

part of 'event_categories_tedxevents_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EventCategoriesTedxevents widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EventCategoriesTedxeventsEvent extends Equatable {}

/// Event that is dispatched when the EventCategoriesTedxevents widget is first created.
class EventCategoriesTedxeventsInitialEvent
    extends EventCategoriesTedxeventsEvent {
  @override
  List<Object?> get props => [];
}
