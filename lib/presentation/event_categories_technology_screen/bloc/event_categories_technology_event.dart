// ignore_for_file: must_be_immutable

part of 'event_categories_technology_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EventCategoriesTechnology widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EventCategoriesTechnologyEvent extends Equatable {}

/// Event that is dispatched when the EventCategoriesTechnology widget is first created.
class EventCategoriesTechnologyInitialEvent
    extends EventCategoriesTechnologyEvent {
  @override
  List<Object?> get props => [];
}
