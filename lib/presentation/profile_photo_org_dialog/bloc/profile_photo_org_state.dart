// ignore_for_file: must_be_immutable

part of 'profile_photo_org_bloc.dart';

/// Represents the state of ProfilePhotoOrg in the application.
class ProfilePhotoOrgState extends Equatable {
  ProfilePhotoOrgState({this.profilePhotoOrgModelObj});

  ProfilePhotoOrgModel? profilePhotoOrgModelObj;

  @override
  List<Object?> get props => [
        profilePhotoOrgModelObj,
      ];
  ProfilePhotoOrgState copyWith(
      {ProfilePhotoOrgModel? profilePhotoOrgModelObj}) {
    return ProfilePhotoOrgState(
      profilePhotoOrgModelObj:
          profilePhotoOrgModelObj ?? this.profilePhotoOrgModelObj,
    );
  }
}
