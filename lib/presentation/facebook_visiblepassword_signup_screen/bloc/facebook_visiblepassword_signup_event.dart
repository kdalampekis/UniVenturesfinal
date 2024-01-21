// ignore_for_file: must_be_immutable

part of 'facebook_visiblepassword_signup_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FacebookVisiblepasswordSignup widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FacebookVisiblepasswordSignupEvent extends Equatable {}

/// Event that is dispatched when the FacebookVisiblepasswordSignup widget is first created.
class FacebookVisiblepasswordSignupInitialEvent
    extends FacebookVisiblepasswordSignupEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends FacebookVisiblepasswordSignupEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
