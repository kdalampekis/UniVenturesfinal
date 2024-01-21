// ignore_for_file: must_be_immutable

part of 'setup_your_account_student_yes_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SetupYourAccountStudentYes widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SetupYourAccountStudentYesEvent extends Equatable {}

/// Event that is dispatched when the SetupYourAccountStudentYes widget is first created.
class SetupYourAccountStudentYesInitialEvent
    extends SetupYourAccountStudentYesEvent {
  @override
  List<Object?> get props => [];
}
