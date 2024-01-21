import 'bloc/profile_photo_org_bloc.dart';
import 'models/profile_photo_org_model.dart';
import 'package:flutter/material.dart';
import 'package:kwstas_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ProfilePhotoOrgDialog extends StatelessWidget {
  const ProfilePhotoOrgDialog({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfilePhotoOrgBloc>(
      create: (context) => ProfilePhotoOrgBloc(ProfilePhotoOrgState(
        profilePhotoOrgModelObj: ProfilePhotoOrgModel(),
      ))
        ..add(ProfilePhotoOrgInitialEvent()),
      child: ProfilePhotoOrgDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270.h,
      decoration: AppDecoration.fillOnPrimary2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 15.v),
          SizedBox(
            width: 187.h,
            child: Text(
              "msg_univentures_would2".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleMediumBlack900Medium.copyWith(
                height: 1.38,
              ),
            ),
          ),
          SizedBox(height: 12.v),
          Column(
            children: [
              SizedBox(
                width: 270.h,
                child: Divider(),
              ),
              SizedBox(height: 7.v),
              Text(
                "lbl_don_t_allow".tr,
                style: CustomTextStyles.bodyLargeLightblueA700,
              ),
              SizedBox(height: 8.v),
              SizedBox(
                width: 270.h,
                child: Divider(),
              ),
            ],
          ),
          SizedBox(height: 8.v),
          Text(
            "lbl_ok".tr,
            style: CustomTextStyles.titleMediumLightblueA700,
          ),
          SizedBox(height: 7.v),
          SizedBox(
            width: 270.h,
            child: Divider(),
          ),
        ],
      ),
    );
  }
}
