// ignore_for_file: must_be_immutable

part of 'volunteer_bloc.dart';

/// Represents the state of Volunteer in the application.
class VolunteerState extends Equatable {
  VolunteerState({this.volunteerModelObj});

  VolunteerModel? volunteerModelObj;

  @override
  List<Object?> get props => [
        volunteerModelObj,
      ];
  VolunteerState copyWith({VolunteerModel? volunteerModelObj}) {
    return VolunteerState(
      volunteerModelObj: volunteerModelObj ?? this.volunteerModelObj,
    );
  }
}
