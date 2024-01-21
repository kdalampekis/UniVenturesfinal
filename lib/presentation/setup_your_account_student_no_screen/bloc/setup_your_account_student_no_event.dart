// ignore_for_file: must_be_immutable

part of 'setup_your_account_student_no_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SetupYourAccountStudentNo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SetupYourAccountStudentNoEvent extends Equatable {}

/// Event that is dispatched when the SetupYourAccountStudentNo widget is first created.
class SetupYourAccountStudentNoInitialEvent
    extends SetupYourAccountStudentNoEvent {
  @override
  List<Object?> get props => [];
}
