// ignore_for_file: must_be_immutable

part of 'setup_your_account_organization_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SetupYourAccountOrganization widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SetupYourAccountOrganizationEvent extends Equatable {}

/// Event that is dispatched when the SetupYourAccountOrganization widget is first created.
class SetupYourAccountOrganizationInitialEvent
    extends SetupYourAccountOrganizationEvent {
  @override
  List<Object?> get props => [];
}
