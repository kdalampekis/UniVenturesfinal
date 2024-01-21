import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/profile_photo_dialog/models/profile_photo_model.dart';part 'profile_photo_event.dart';part 'profile_photo_state.dart';/// A bloc that manages the state of a ProfilePhoto according to the event that is dispatched to it.
class ProfilePhotoBloc extends Bloc<ProfilePhotoEvent, ProfilePhotoState> {ProfilePhotoBloc(ProfilePhotoState initialState) : super(initialState) { on<ProfilePhotoInitialEvent>(_onInitialize); }

_onInitialize(ProfilePhotoInitialEvent event, Emitter<ProfilePhotoState> emit, ) async  {  } 
 }
