// ignore_for_file: must_be_immutable

part of 'event_categories_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EventCategories widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EventCategoriesEvent extends Equatable {}

/// Event that is dispatched when the EventCategories widget is first created.
class EventCategoriesInitialEvent extends EventCategoriesEvent {
  @override
  List<Object?> get props => [];
}
