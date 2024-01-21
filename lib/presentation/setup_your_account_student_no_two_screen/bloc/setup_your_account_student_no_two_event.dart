// ignore_for_file: must_be_immutable

part of 'setup_your_account_student_no_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SetupYourAccountStudentNoTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SetupYourAccountStudentNoTwoEvent extends Equatable {}

/// Event that is dispatched when the SetupYourAccountStudentNoTwo widget is first created.
class SetupYourAccountStudentNoTwoInitialEvent
    extends SetupYourAccountStudentNoTwoEvent {
  @override
  List<Object?> get props => [];
}
