// ignore_for_file: must_be_immutable

part of 'popular_events_red_heart_bloc.dart';

/// Represents the state of PopularEventsRedHeart in the application.
class PopularEventsRedHeartState extends Equatable {
  PopularEventsRedHeartState({this.popularEventsRedHeartModelObj});

  PopularEventsRedHeartModel? popularEventsRedHeartModelObj;

  @override
  List<Object?> get props => [
        popularEventsRedHeartModelObj,
      ];
  PopularEventsRedHeartState copyWith(
      {PopularEventsRedHeartModel? popularEventsRedHeartModelObj}) {
    return PopularEventsRedHeartState(
      popularEventsRedHeartModelObj:
          popularEventsRedHeartModelObj ?? this.popularEventsRedHeartModelObj,
    );
  }
}
