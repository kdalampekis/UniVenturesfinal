import 'bloc/apple_signup_bloc.dart';
import 'models/apple_signup_model.dart';
import 'package:flutter/material.dart';
import 'package:kwstas_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AppleSignupBottomsheet extends StatelessWidget {
  const AppleSignupBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppleSignupBloc>(
      create: (context) => AppleSignupBloc(AppleSignupState(
        appleSignupModelObj: AppleSignupModel(),
      ))
        ..add(AppleSignupInitialEvent()),
      child: AppleSignupBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 341.h,
      padding: EdgeInsets.symmetric(
        horizontal: 44.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder31,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          Text(
            "lbl_email".tr,
            style: theme.textTheme.headlineSmall,
          ),
        ],
      ),
    );
  }
}
