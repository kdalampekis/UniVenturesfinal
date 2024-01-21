// ignore_for_file: must_be_immutable

part of 'profile_photo_org_two_bloc.dart';

/// Represents the state of ProfilePhotoOrgTwo in the application.
class ProfilePhotoOrgTwoState extends Equatable {
  ProfilePhotoOrgTwoState({this.profilePhotoOrgTwoModelObj});

  ProfilePhotoOrgTwoModel? profilePhotoOrgTwoModelObj;

  @override
  List<Object?> get props => [
        profilePhotoOrgTwoModelObj,
      ];
  ProfilePhotoOrgTwoState copyWith(
      {ProfilePhotoOrgTwoModel? profilePhotoOrgTwoModelObj}) {
    return ProfilePhotoOrgTwoState(
      profilePhotoOrgTwoModelObj:
          profilePhotoOrgTwoModelObj ?? this.profilePhotoOrgTwoModelObj,
    );
  }
}
