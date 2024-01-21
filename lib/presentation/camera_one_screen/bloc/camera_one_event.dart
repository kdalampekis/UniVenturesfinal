// ignore_for_file: must_be_immutable

part of 'camera_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CameraOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CameraOneEvent extends Equatable {}

/// Event that is dispatched when the CameraOne widget is first created.
class CameraOneInitialEvent extends CameraOneEvent {
  @override
  List<Object?> get props => [];
}
