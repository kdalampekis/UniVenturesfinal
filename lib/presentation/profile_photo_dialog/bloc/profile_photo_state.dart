// ignore_for_file: must_be_immutable

part of 'profile_photo_bloc.dart';

/// Represents the state of ProfilePhoto in the application.
class ProfilePhotoState extends Equatable {
  ProfilePhotoState({this.profilePhotoModelObj});

  ProfilePhotoModel? profilePhotoModelObj;

  @override
  List<Object?> get props => [
        profilePhotoModelObj,
      ];
  ProfilePhotoState copyWith({ProfilePhotoModel? profilePhotoModelObj}) {
    return ProfilePhotoState(
      profilePhotoModelObj: profilePhotoModelObj ?? this.profilePhotoModelObj,
    );
  }
}
