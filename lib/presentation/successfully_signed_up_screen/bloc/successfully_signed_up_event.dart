// ignore_for_file: must_be_immutable

part of 'successfully_signed_up_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SuccessfullySignedUp widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SuccessfullySignedUpEvent extends Equatable {}

/// Event that is dispatched when the SuccessfullySignedUp widget is first created.
class SuccessfullySignedUpInitialEvent extends SuccessfullySignedUpEvent {
  @override
  List<Object?> get props => [];
}
