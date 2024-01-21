// ignore_for_file: must_be_immutable

part of 'event_categories_university_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EventCategoriesUniversity widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EventCategoriesUniversityEvent extends Equatable {}

/// Event that is dispatched when the EventCategoriesUniversity widget is first created.
class EventCategoriesUniversityInitialEvent
    extends EventCategoriesUniversityEvent {
  @override
  List<Object?> get props => [];
}
