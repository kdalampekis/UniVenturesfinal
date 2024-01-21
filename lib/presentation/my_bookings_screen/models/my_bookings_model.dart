// ignore_for_file: must_be_immutable
import '../../database';
import 'package:equatable/equatable.dart';/// This class defines the variables used in the [my_bookings_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MyBookingsModel extends Equatable {
 final List<Event> bookedEvents;

 MyBookingsModel({this.bookedEvents = const []});

 MyBookingsModel copyWith({List<Event>? bookedEvents}) {
  return MyBookingsModel(
   bookedEvents: bookedEvents ?? this.bookedEvents,
  );
 }

 @override
 List<Object?> get props => [bookedEvents];
}

