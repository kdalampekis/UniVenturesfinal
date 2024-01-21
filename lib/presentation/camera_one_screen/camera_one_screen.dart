import 'bloc/camera_one_bloc.dart';
import 'models/camera_one_model.dart';
import 'package:flutter/material.dart';
import 'package:kwstas_s_application2/core/app_export.dart';

class CameraOneScreen extends StatelessWidget {
  const CameraOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<CameraOneBloc>(
      create: (context) => CameraOneBloc(CameraOneState(
        cameraOneModelObj: CameraOneModel(),
      ))
        ..add(CameraOneInitialEvent()),
      child: CameraOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CameraOneBloc, CameraOneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.deepPurple100,
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgDaiboovC16157c,
                height: 932.v,
                width: 430.h,
                alignment: Alignment.center,
              ),
            ),
          ),
        );
      },
    );
  }
}
