// ignore_for_file: must_be_immutable

part of 'home_org_bloc.dart';

/// Represents the state of HomeOrg in the application.
class HomeOrgState extends Equatable {
  HomeOrgState({this.homeOrgModelObj});

  HomeOrgModel? homeOrgModelObj;

  @override
  List<Object?> get props => [
        homeOrgModelObj,
      ];
  HomeOrgState copyWith({HomeOrgModel? homeOrgModelObj}) {
    return HomeOrgState(
      homeOrgModelObj: homeOrgModelObj ?? this.homeOrgModelObj,
    );
  }
}
