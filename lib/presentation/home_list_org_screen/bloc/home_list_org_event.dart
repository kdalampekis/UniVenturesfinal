// ignore_for_file: must_be_immutable

part of 'home_list_org_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomeListOrg widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomeListOrgEvent extends Equatable {}

/// Event that is dispatched when the HomeListOrg widget is first created.
class HomeListOrgInitialEvent extends HomeListOrgEvent {
  @override
  List<Object?> get props => [];
}
