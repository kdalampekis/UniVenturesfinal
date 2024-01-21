// ignore_for_file: must_be_immutable

part of 'home_list_bloc.dart';

/// Represents the state of HomeList in the application.
class HomeListState extends Equatable {
  HomeListState({this.homeListModelObj});

  HomeListModel? homeListModelObj;

  @override
  List<Object?> get props => [
        homeListModelObj,
      ];
  HomeListState copyWith({HomeListModel? homeListModelObj}) {
    return HomeListState(
      homeListModelObj: homeListModelObj ?? this.homeListModelObj,
    );
  }
}
