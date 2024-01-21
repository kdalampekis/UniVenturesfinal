// ignore_for_file: must_be_immutable

part of 'volunteer_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Volunteer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VolunteerEvent extends Equatable {}

/// Event that is dispatched when the Volunteer widget is first created.
class VolunteerInitialEvent extends VolunteerEvent {
  @override
  List<Object?> get props => [];
}
