// ignore_for_file: must_be_immutable

part of 'profile_photo_org_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfilePhotoOrg widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfilePhotoOrgEvent extends Equatable {}

/// Event that is dispatched when the ProfilePhotoOrg widget is first created.
class ProfilePhotoOrgInitialEvent extends ProfilePhotoOrgEvent {
  @override
  List<Object?> get props => [];
}
