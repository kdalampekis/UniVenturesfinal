// ignore_for_file: must_be_immutable

part of 'home_org_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomeOrg widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomeOrgEvent extends Equatable {}

/// Event that is dispatched when the HomeOrg widget is first created.
class HomeOrgInitialEvent extends HomeOrgEvent {
  @override
  List<Object?> get props => [];
}
