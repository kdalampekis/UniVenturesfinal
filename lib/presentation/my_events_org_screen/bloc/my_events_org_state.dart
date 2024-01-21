// ignore_for_file: must_be_immutable

part of 'my_events_org_bloc.dart';

/// Represents the state of MyEventsOrg in the application.
class MyEventsOrgState extends Equatable {
  MyEventsOrgState({this.myEventsOrgModelObj});

  MyEventsOrgModel? myEventsOrgModelObj;

  @override
  List<Object?> get props => [
        myEventsOrgModelObj,
      ];
  MyEventsOrgState copyWith({MyEventsOrgModel? myEventsOrgModelObj}) {
    return MyEventsOrgState(
      myEventsOrgModelObj: myEventsOrgModelObj ?? this.myEventsOrgModelObj,
    );
  }
}
