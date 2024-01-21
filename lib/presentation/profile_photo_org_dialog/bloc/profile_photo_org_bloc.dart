import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:kwstas_s_application2/presentation/profile_photo_org_dialog/models/profile_photo_org_model.dart';
part 'profile_photo_org_event.dart';
part 'profile_photo_org_state.dart';

/// A bloc that manages the state of a ProfilePhotoOrg according to the event that is dispatched to it.
class ProfilePhotoOrgBloc
    extends Bloc<ProfilePhotoOrgEvent, ProfilePhotoOrgState> {
  ProfilePhotoOrgBloc(ProfilePhotoOrgState initialState) : super(initialState) {
    on<ProfilePhotoOrgInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfilePhotoOrgInitialEvent event,
    Emitter<ProfilePhotoOrgState> emit,
  ) async {}
}
