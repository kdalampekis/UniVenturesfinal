// ignore_for_file: must_be_immutable

part of 'think_biz_profile_org_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ThinkBizProfileOrg widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ThinkBizProfileOrgEvent extends Equatable {}

/// Event that is dispatched when the ThinkBizProfileOrg widget is first created.
class ThinkBizProfileOrgInitialEvent extends ThinkBizProfileOrgEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends ThinkBizProfileOrgEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent1 extends ThinkBizProfileOrgEvent {
  ChangePasswordVisibilityEvent1({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
