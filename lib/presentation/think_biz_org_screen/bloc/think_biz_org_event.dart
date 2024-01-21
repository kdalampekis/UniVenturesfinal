// ignore_for_file: must_be_immutable

part of 'think_biz_org_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ThinkBizOrg widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ThinkBizOrgEvent extends Equatable {}

/// Event that is dispatched when the ThinkBizOrg widget is first created.
class ThinkBizOrgInitialEvent extends ThinkBizOrgEvent {
  @override
  List<Object?> get props => [];
}
