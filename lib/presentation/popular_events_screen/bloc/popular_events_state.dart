// ignore_for_file: must_be_immutable

part of 'popular_events_bloc.dart';

/// Represents the state of PopularEvents in the application.
class PopularEventsState extends Equatable {
  PopularEventsState({this.popularEventsModelObj});

  PopularEventsModel? popularEventsModelObj;

  @override
  List<Object?> get props => [
        popularEventsModelObj,
      ];
  PopularEventsState copyWith({PopularEventsModel? popularEventsModelObj}) {
    return PopularEventsState(
      popularEventsModelObj:
          popularEventsModelObj ?? this.popularEventsModelObj,
    );
  }
}
