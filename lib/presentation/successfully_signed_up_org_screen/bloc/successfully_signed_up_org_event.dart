// ignore_for_file: must_be_immutable

part of 'successfully_signed_up_org_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SuccessfullySignedUpOrg widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SuccessfullySignedUpOrgEvent extends Equatable {}

/// Event that is dispatched when the SuccessfullySignedUpOrg widget is first created.
class SuccessfullySignedUpOrgInitialEvent extends SuccessfullySignedUpOrgEvent {
  @override
  List<Object?> get props => [];
}
