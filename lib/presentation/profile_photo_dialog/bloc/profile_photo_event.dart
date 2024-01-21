// ignore_for_file: must_be_immutable

part of 'profile_photo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfilePhoto widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfilePhotoEvent extends Equatable {}

/// Event that is dispatched when the ProfilePhoto widget is first created.
class ProfilePhotoInitialEvent extends ProfilePhotoEvent {
  @override
  List<Object?> get props => [];
}
