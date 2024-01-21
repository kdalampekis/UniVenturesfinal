// ignore_for_file: must_be_immutable

part of 'team_illustration_3_one_bloc.dart';

/// Represents the state of TeamIllustration3One in the application.
class TeamIllustration3OneState extends Equatable {
  TeamIllustration3OneState({this.teamIllustration3OneModelObj});

  TeamIllustration3OneModel? teamIllustration3OneModelObj;

  @override
  List<Object?> get props => [
        teamIllustration3OneModelObj,
      ];
  TeamIllustration3OneState copyWith(
      {TeamIllustration3OneModel? teamIllustration3OneModelObj}) {
    return TeamIllustration3OneState(
      teamIllustration3OneModelObj:
          teamIllustration3OneModelObj ?? this.teamIllustration3OneModelObj,
    );
  }
}
