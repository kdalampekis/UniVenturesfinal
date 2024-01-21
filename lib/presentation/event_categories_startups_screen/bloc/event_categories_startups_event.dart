// ignore_for_file: must_be_immutable

part of 'event_categories_startups_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EventCategoriesStartups widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EventCategoriesStartupsEvent extends Equatable {}

/// Event that is dispatched when the EventCategoriesStartups widget is first created.
class EventCategoriesStartupsInitialEvent extends EventCategoriesStartupsEvent {
  @override
  List<Object?> get props => [];
}
