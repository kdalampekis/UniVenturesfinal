import 'package:equatable/equatable.dart';
import 'package:shared_preferences/shared_preferences.dart';import '../../database';
import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/plan_biz_screen/models/plan_biz_model.dart';part 'plan_biz_event.dart';part 'plan_biz_state.dart';/// A bloc that manages the state of a PlanBiz according to the event that is dispatched to it.

class PlanBizBloc extends Bloc<PlanBizEvent, PlanBizState> {
 PlanBizBloc(PlanBizState initialState) : super(initialState) {
  on<PlanBizInitialEvent>(_onInitialize);
  on<BookEvent>(_onBookEvent);
  on<FavoriteEvent>(_onFavoriteEvent);
 }

 _onInitialize(PlanBizInitialEvent event, Emitter<PlanBizState> emit) async {
  int? userId = await _getCurrentUserId();
  if (userId != null) {
   // Query the database to check if the event is booked or favorited
   bool isBooked = await DatabaseHelper.instance.isEventBooked(userId, "planbiz");
   bool isFavorited = await DatabaseHelper.instance.isEventFavorited(userId, "planbiz");
   emit(state.copyWith(isBooked: isBooked, isFavorited: isFavorited));
  }
 }

 Future<int?> _getCurrentUserId() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getInt('userId');
 }

 void _onBookEvent(BookEvent event, Emitter<PlanBizState> emit) async {
  int? userId = await _getCurrentUserId();
  if (userId == null) {
   // Handle the case where the user is not logged in
   return;
  }
  String eventId = event.eventId;
  await DatabaseHelper.instance.addBooking(userId, eventId);
  emit(state.copyWith(isBooked: true));
 }

 void _onFavoriteEvent(FavoriteEvent event, Emitter<PlanBizState> emit) async {
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

