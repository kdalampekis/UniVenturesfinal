// ignore_for_file: must_be_immutable

part of 'setup_your_account_student_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SetupYourAccountStudentFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SetupYourAccountStudentFourEvent extends Equatable {}

/// Event that is dispatched when the SetupYourAccountStudentFour widget is first created.
class SetupYourAccountStudentFourInitialEvent
    extends SetupYourAccountStudentFourEvent {
  @override
  List<Object?> get props => [];
}
