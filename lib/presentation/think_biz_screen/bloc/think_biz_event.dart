part of 'think_biz_bloc.dart';

@immutable
abstract class ThinkBizEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class ThinkBizInitialEvent extends ThinkBizEvent {}

class BookEvent extends ThinkBizEvent {
  final String eventId;
  BookEvent({required this.eventId});
}

class FavoriteEvent extends ThinkBizEvent {
  final String eventId;
  FavoriteEvent({required this.eventId});
}
