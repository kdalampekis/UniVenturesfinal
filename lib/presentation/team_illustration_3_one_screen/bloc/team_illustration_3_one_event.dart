// ignore_for_file: must_be_immutable

part of 'team_illustration_3_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TeamIllustration3One widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TeamIllustration3OneEvent extends Equatable {}

/// Event that is dispatched when the TeamIllustration3One widget is first created.
class TeamIllustration3OneInitialEvent extends TeamIllustration3OneEvent {
  @override
  List<Object?> get props => [];
}
