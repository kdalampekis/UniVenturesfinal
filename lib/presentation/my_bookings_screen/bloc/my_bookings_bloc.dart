import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../database';
import '/core/app_export.dart';
import 'package:kwstas_s_application2/presentation/my_bookings_screen/models/my_bookings_model.dart';
part 'my_bookings_event.dart';
part 'my_bookings_state.dart';

/// A bloc that manages the state of a MyBookings according to the event that is dispatched to it.
// In MyBookingsBloc.dart
class MyBookingsBloc extends Bloc<MyBookingsEvent, MyBookingsState> {
  MyBookingsBloc() : super(MyBookingsState()) {
    on<MyBookingsInitialEvent>(_onInitialize);
  }

  void _onInitialize(MyBookingsInitialEvent event, Emitter<MyBookingsState> emit) async {
    int? userId = await _getCurrentUserId();
    if (userId != null) {
      List<Event> bookedEvents = await DatabaseHelper.instance.getBookedEvents(userId);
      emit(state.copyWith(bookedEvents: bookedEvents));
    }
  }

  Future<int?> _getCurrentUserId() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt('userId');
  }
}



