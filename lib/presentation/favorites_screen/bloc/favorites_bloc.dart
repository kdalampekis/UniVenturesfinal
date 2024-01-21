import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../database';
import '/core/app_export.dart';
import 'package:kwstas_s_application2/presentation/favorites_screen/models/favorites_model.dart';
part 'favorites_event.dart';
part 'favorites_state.dart';

/// A bloc that manages the state of a Favorites according to the event that is dispatched to it.
class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  FavoritesBloc() : super(FavoritesState()) {
    on<FavoritesInitialEvent>(_onInitialize);
  }

  void _onInitialize(FavoritesInitialEvent event, Emitter<FavoritesState> emit) async {
    int? userId = await _getCurrentUserId();
    if (userId != null) {
      List<Event> favoriteEvents = await DatabaseHelper.instance.getFavoriteEvents(userId);
      emit(state.copyWith(favoriteEvents: favoriteEvents));
    }
  }

  Future<int?> _getCurrentUserId() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt('userId');
  }
}