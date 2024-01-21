import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';import '../../database';
import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/tedxaueb_pangea_main_event_screen/models/tedxaueb_pangea_main_event_model.dart';part 'tedxaueb_pangea_main_event_event.dart';part 'tedxaueb_pangea_main_event_state.dart';/// A bloc that manages the state of a TedxauebPangeaMainEvent according to the event that is dispatched to it.



class TedxauebPangeaMainBloc extends Bloc<TedxauebPangeaMainEvent, TedxauebPangeaMainState> {
 TedxauebPangeaMainBloc(TedxauebPangeaMainState initialState) : super(initialState) {
  on<TedxauebPangeaMainInitialEvent>(_onInitialize);
  on<BookEvent>(_onBookEvent);
  on<FavoriteEvent>(_onFavoriteEvent);
 }

 _onInitialize(TedxauebPangeaMainInitialEvent event, Emitter<TedxauebPangeaMainState> emit) async {
  int? userId = await _getCurrentUserId();
  if (userId != null) {
   // Query the database to check if the event is booked or favorited
   bool isBooked = await DatabaseHelper.instance.isEventBooked(userId, "pangea");
   bool isFavorited = await DatabaseHelper.instance.isEventFavorited(userId, "pangea");
   emit(state.copyWith(isBooked: isBooked, isFavorited: isFavorited));
  }
 }

 Future<int?> _getCurrentUserId() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getInt('userId');
 }

 void _onBookEvent(BookEvent event, Emitter<TedxauebPangeaMainState> emit) async {
  int? userId = await _getCurrentUserId();
  if (userId == null) {
   // Handle the case where the user is not logged in
   return;
  }
  String eventId = event.eventId;
  await DatabaseHelper.instance.addBooking(userId, eventId);
  emit(state.copyWith(isBooked: true));
 }

 void _onFavoriteEvent(FavoriteEvent event, Emitter<TedxauebPangeaMainState> emit) async {
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


