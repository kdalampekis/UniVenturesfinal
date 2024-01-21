// ignore_for_file: must_be_immutable

part of 'my_events_org_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyEventsOrg widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyEventsOrgEvent extends Equatable {}

/// Event that is dispatched when the MyEventsOrg widget is first created.
class MyEventsOrgInitialEvent extends MyEventsOrgEvent {
  @override
  List<Object?> get props => [];
}
