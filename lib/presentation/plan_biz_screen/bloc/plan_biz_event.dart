// ignore_for_file: must_be_immutable

part of 'plan_biz_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PlanBiz widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PlanBizEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class PlanBizInitialEvent extends PlanBizEvent {}

class BookEvent extends PlanBizEvent {
  final String eventId;
  BookEvent({required this.eventId});
}

class FavoriteEvent extends PlanBizEvent {
  final String eventId;
  FavoriteEvent({required this.eventId});
}
