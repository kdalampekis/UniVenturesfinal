// ignore_for_file: must_be_immutable

part of 'setup_your_account_organization_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SetupYourAccountOrganizationTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SetupYourAccountOrganizationTwoEvent extends Equatable {}

/// Event that is dispatched when the SetupYourAccountOrganizationTwo widget is first created.
class SetupYourAccountOrganizationTwoInitialEvent
    extends SetupYourAccountOrganizationTwoEvent {
  @override
  List<Object?> get props => [];
}
