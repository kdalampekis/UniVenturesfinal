// ignore_for_file: must_be_immutable

part of 'profile_change_name_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileChangeName widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileChangeNameEvent extends Equatable {}

/// Event that is dispatched when the ProfileChangeName widget is first created.
class ProfileChangeNameInitialEvent extends ProfileChangeNameEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends ProfileChangeNameEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent1 extends ProfileChangeNameEvent {
  ChangePasswordVisibilityEvent1({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent2 extends ProfileChangeNameEvent {
  ChangePasswordVisibilityEvent2({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
