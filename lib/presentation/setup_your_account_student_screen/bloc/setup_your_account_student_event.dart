// ignore_for_file: must_be_immutable

part of 'setup_your_account_student_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SetupYourAccountStudent widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SetupYourAccountStudentEvent extends Equatable {}

/// Event that is dispatched when the SetupYourAccountStudent widget is first created.
class SetupYourAccountStudentInitialEvent extends SetupYourAccountStudentEvent {
  @override
  List<Object?> get props => [];
}
