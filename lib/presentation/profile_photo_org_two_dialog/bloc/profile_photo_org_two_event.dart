// ignore_for_file: must_be_immutable

part of 'profile_photo_org_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfilePhotoOrgTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfilePhotoOrgTwoEvent extends Equatable {}

/// Event that is dispatched when the ProfilePhotoOrgTwo widget is first created.
class ProfilePhotoOrgTwoInitialEvent extends ProfilePhotoOrgTwoEvent {
  @override
  List<Object?> get props => [];
}
