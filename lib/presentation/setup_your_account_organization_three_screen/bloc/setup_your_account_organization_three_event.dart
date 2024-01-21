// ignore_for_file: must_be_immutable

part of 'setup_your_account_organization_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SetupYourAccountOrganizationThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SetupYourAccountOrganizationThreeEvent extends Equatable {}

/// Event that is dispatched when the SetupYourAccountOrganizationThree widget is first created.
class SetupYourAccountOrganizationThreeInitialEvent
    extends SetupYourAccountOrganizationThreeEvent {
  @override
  List<Object?> get props => [];
}
