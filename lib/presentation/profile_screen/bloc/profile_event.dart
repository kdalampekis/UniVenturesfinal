// ignore_for_file: must_be_immutable

part of 'profile_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Profile widget.
///
/// Events must be immutable and implement the [Equatable] interface.

@immutable
abstract class ProfileEvent extends Equatable {}

class ProfileInitialEvent extends ProfileEvent {
  @override
  List<Object?> get props => [];
}

class ChangePasswordVisibilityEvent extends ProfileEvent {
  final bool value;

  ChangePasswordVisibilityEvent({required this.value});

  @override
  List<Object?> get props => [value];
}

class ChangePasswordVisibilityEvent1 extends ProfileEvent {
  final bool value;

  ChangePasswordVisibilityEvent1({required this.value});

  @override
  List<Object?> get props => [value];
}

class ChangePasswordVisibilityEvent2 extends ProfileEvent {
  final bool value;

  ChangePasswordVisibilityEvent2({required this.value});

  @override
  List<Object?> get props => [value];
}

// New event for loading user profile data
class LoadUserProfileEvent extends ProfileEvent {
  final String email; // Assuming email is used to identify the user
  final String password; // If needed for authentication

  LoadUserProfileEvent({required this.email, this.password = ''});

  @override
  List<Object?> get props => [email, password];
}
@immutable
class UpdateProfileImageEvent extends ProfileEvent {
  final String imagePath;

  UpdateProfileImageEvent(this.imagePath);

  @override
  List<Object> get props => [imagePath];
}