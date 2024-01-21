// ignore_for_file: must_be_immutable

part of 'facebook_visiblepassword_login_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FacebookVisiblepasswordLogin widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FacebookVisiblepasswordLoginEvent extends Equatable {}

/// Event that is dispatched when the FacebookVisiblepasswordLogin widget is first created.
class FacebookVisiblepasswordLoginInitialEvent
    extends FacebookVisiblepasswordLoginEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends FacebookVisiblepasswordLoginEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
