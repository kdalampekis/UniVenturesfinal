// ignore_for_file: must_be_immutable

part of 'home_list_org_bloc.dart';

/// Represents the state of HomeListOrg in the application.
class HomeListOrgState extends Equatable {
  HomeListOrgState({this.homeListOrgModelObj});

  HomeListOrgModel? homeListOrgModelObj;

  @override
  List<Object?> get props => [
        homeListOrgModelObj,
      ];
  HomeListOrgState copyWith({HomeListOrgModel? homeListOrgModelObj}) {
    return HomeListOrgState(
      homeListOrgModelObj: homeListOrgModelObj ?? this.homeListOrgModelObj,
    );
  }
}
