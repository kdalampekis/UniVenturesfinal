import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../database';
import '/core/app_export.dart';
import 'package:kwstas_s_application2/presentation/open_conference_screen/models/open_conference_model.dart';
part 'open_conference_event.dart';
part 'open_conference_state.dart';

class OpenConferenceBloc extends Bloc<OpenConferenceEvent, OpenConferenceState> {
  OpenConferenceBloc(OpenConferenceState initialState) : super(initialState) {
    on<OpenConferenceInitialEvent>(_onInitialize);
    on<BookEvent>(_onBookEvent);
    on<FavoriteEvent>(_onFavoriteEvent);
  }

  _onInitialize(OpenConferenceInitialEvent event, Emitter<OpenConferenceState> emit) async {
    int? userId = await _getCurrentUserId();
    if (userId != null) {
      // Query the database to check if the event is booked or favorited
      bool isBooked = await DatabaseHelper.instance.isEventBooked(userId, "openconference");
      bool isFavorited = await DatabaseHelper.instance.isEventFavorited(userId, "openconference");
      emit(state.copyWith(isBooked: isBooked, isFavorited: isFavorited));
    }
  }

  Future<int?> _getCurrentUserId() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt('userId');
  }

  void _onBookEvent(BookEvent event, Emitter<OpenConferenceState> emit) async {
    int? userId = await _getCurrentUserId();
    if (userId == null) {
      // Handle the case where the user is not logged in
      return;
    }
    String eventId = event.eventId;
    await DatabaseHelper.instance.addBooking(userId, eventId);
    emit(state.copyWith(isBooked: true));
  }

  void _onFavoriteEvent(FavoriteEvent event, Emitter<OpenConferenceState> emit) async {
    int? userId = await _getCurrentUserId();
    if (userId == null) {
      // Handle the case where the user is not logged in
      return;
    }
    String eventId = event.eventId;
    await DatabaseHelper.instance.addFavorite(userId, eventId);
    // Toggle the favorite status
    bool isCurrentlyFavorited = state.isFavorited;
    emit(state.copyWith(isFavorited: !isCurrentlyFavorited));
  }
}