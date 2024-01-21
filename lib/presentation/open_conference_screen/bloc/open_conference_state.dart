// ignore_for_file: must_be_immutable

part of 'open_conference_bloc.dart';

/// Represents the state of OpenConference in the application.
class OpenConferenceState extends Equatable {
  final OpenConferenceModel? OpenConferenceModelObj;
  final bool isBooked;
  final bool isFavorited;

  OpenConferenceState({
    this.OpenConferenceModelObj,
    this.isBooked = false,
    this.isFavorited = false,
  });

  @override
  List<Object?> get props => [OpenConferenceModelObj, isBooked, isFavorited];

  OpenConferenceState copyWith({
    OpenConferenceModel? OpenConferenceModelObj,
    bool? isBooked,
    bool? isFavorited,
  }) {
    return OpenConferenceState(
      OpenConferenceModelObj: OpenConferenceModelObj ?? this.OpenConferenceModelObj,
      isBooked: isBooked ?? this.isBooked,
      isFavorited: isFavorited ?? this.isFavorited,
    );
  }
}