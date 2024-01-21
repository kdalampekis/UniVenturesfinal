import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:kwstas_s_application2/presentation/profile_photo_org_two_dialog/models/profile_photo_org_two_model.dart';
part 'profile_photo_org_two_event.dart';
part 'profile_photo_org_two_state.dart';

/// A bloc that manages the state of a ProfilePhotoOrgTwo according to the event that is dispatched to it.
class ProfilePhotoOrgTwoBloc
    extends Bloc<ProfilePhotoOrgTwoEvent, ProfilePhotoOrgTwoState> {
  ProfilePhotoOrgTwoBloc(ProfilePhotoOrgTwoState initialState)
      : super(initialState) {
    on<ProfilePhotoOrgTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfilePhotoOrgTwoInitialEvent event,
    Emitter<ProfilePhotoOrgTwoState> emit,
  ) async {}
}
