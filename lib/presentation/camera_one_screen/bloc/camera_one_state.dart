// ignore_for_file: must_be_immutable

part of 'camera_one_bloc.dart';

/// Represents the state of CameraOne in the application.
class CameraOneState extends Equatable {
  CameraOneState({this.cameraOneModelObj});

  CameraOneModel? cameraOneModelObj;

  @override
  List<Object?> get props => [
        cameraOneModelObj,
      ];
  CameraOneState copyWith({CameraOneModel? cameraOneModelObj}) {
    return CameraOneState(
      cameraOneModelObj: cameraOneModelObj ?? this.cameraOneModelObj,
    );
  }
}
