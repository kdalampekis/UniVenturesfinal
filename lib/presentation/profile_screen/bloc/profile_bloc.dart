import 'package:equatable/equatable.dart';
import 'package:kwstas_s_application2/presentation/database';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/profile_screen/models/profile_model.dart';part 'profile_event.dart';part 'profile_state.dart';/// A bloc that manages the state of a Profile according to the event that is dispatched to it.
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
    ProfileBloc(ProfileState initialState) : super(initialState) {
        on<ProfileInitialEvent>(_onInitialize);
        on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
        on<ChangePasswordVisibilityEvent1>(_changePasswordVisibility1);
        on<ChangePasswordVisibilityEvent2>(_changePasswordVisibility2);
        on<UpdateProfileImageEvent>(_onUpdateProfileImage);
    }

    _changePasswordVisibility(ChangePasswordVisibilityEvent event,
        Emitter<ProfileState> emit,) {
        emit(state.copyWith(isShowPassword: event.value));
    }

    _changePasswordVisibility1(ChangePasswordVisibilityEvent1 event,
        Emitter<ProfileState> emit,) {
        emit(state.copyWith(isShowPassword1: event.value));
    }

    _changePasswordVisibility2(ChangePasswordVisibilityEvent2 event,
        Emitter<ProfileState> emit,) {
        emit(state.copyWith(isShowPassword2: event.value));
    }



    Future<int?> _getCurrentUserId() async {
        final prefs = await SharedPreferences.getInstance();
        return prefs.getInt('userId');
    }

    void _onUpdateProfileImage(UpdateProfileImageEvent event,
        Emitter<ProfileState> emit) {
        // Update the state with the new image path
        emit(state.copyWith(imagePath: event.imagePath));

        // Optionally, update the user's profile in the database
        _getCurrentUserId().then((userId) {
            if (userId != null) {
                DatabaseHelper.instance.updateUserImagePath(
                    userId, event.imagePath);
            }
        });
    }

    _onInitialize(ProfileInitialEvent event, Emitter<ProfileState> emit) async {
        int? currentUserId = await _getCurrentUserId();
        if (currentUserId != null) {
            var userData = await DatabaseHelper.instance.getUserById(
                currentUserId);
            if (userData != null) {
                emit(state.copyWith(
                    name: userData[DatabaseHelper.columnName],
                    lastName: userData[DatabaseHelper.columnLastName],
                    email: userData[DatabaseHelper.columnEmail],
                    password: userData[DatabaseHelper.columnPassword],
                    imagePath: userData[DatabaseHelper.columnImagePath],
                    isShowPassword: true,
                    isShowPassword1: true,
                    isShowPassword2: true
                ));
            }
        }
    }
}
