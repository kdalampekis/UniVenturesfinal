// ignore_for_file: must_be_immutable

part of 'my_bookings_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyBookings widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyBookingsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class MyBookingsInitialEvent extends MyBookingsEvent {}

