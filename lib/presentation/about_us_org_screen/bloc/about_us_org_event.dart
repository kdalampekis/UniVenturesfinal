// ignore_for_file: must_be_immutable

part of 'about_us_org_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AboutUsOrg widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AboutUsOrgEvent extends Equatable {}

/// Event that is dispatched when the AboutUsOrg widget is first created.
class AboutUsOrgInitialEvent extends AboutUsOrgEvent {
  @override
  List<Object?> get props => [];
}
