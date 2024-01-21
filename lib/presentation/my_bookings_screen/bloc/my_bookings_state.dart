// ignore_for_file: must_be_immutable

part of 'my_bookings_bloc.dart';

/// Represents the state of MyBookings in the application.

// In MyBookingsState.dart
class MyBookingsState extends Equatable {
  final List<Event> bookedEvents;

  MyBookingsState({this.bookedEvents = const []});

  @override
  List<Object?> get props => [bookedEvents];

  MyBookingsState copyWith({List<Event>? bookedEvents}) {
    return MyBookingsState(
      bookedEvents: bookedEvents ?? this.bookedEvents,
    );
  }
}



