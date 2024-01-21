import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:kwstas_s_application2/presentation/profile_change_name_screen/models/profile_change_name_model.dart';
part 'profile_change_name_event.dart';
part 'profile_change_name_state.dart';

/// A bloc that manages the state of a ProfileChangeName according to the event that is dispatched to it.
class ProfileChangeNameBloc
    extends Bloc<ProfileChangeNameEvent, ProfileChangeNameState> {
  ProfileChangeNameBloc(ProfileChangeNameState initialState)
      : super(initialState) {
    on<ProfileChangeNameInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<ChangePasswordVisibilityEvent1>(_changePasswordVisibility1);
    on<ChangePasswordVisibilityEvent2>(_changePasswordVisibility2);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<ProfileChangeNameState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword: event.value,
    ));
  }

  _changePasswordVisibility1(
    ChangePasswordVisibilityEvent1 event,
    Emitter<ProfileChangeNameState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword1: event.value,
    ));
  }

  _changePasswordVisibility2(
    ChangePasswordVisibilityEvent2 event,
    Emitter<ProfileChangeNameState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword2: event.value,
    ));
  }

  _onInitialize(
    ProfileChangeNameInitialEvent event,
    Emitter<ProfileChangeNameState> emit,
  ) async {
    emit(state.copyWith(
      languageEditTextController: TextEditingController(),
      userTypeEditTextController: TextEditingController(),
      passwordEditTextController: TextEditingController(),
      emailEditTextController: TextEditingController(),
      isShowPassword: true,
      isShowPassword1: true,
      isShowPassword2: true,
    ));
  }
}
