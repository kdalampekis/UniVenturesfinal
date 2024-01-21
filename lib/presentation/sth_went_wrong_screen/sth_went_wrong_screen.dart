import 'bloc/sth_went_wrong_bloc.dart';
import 'models/sth_went_wrong_model.dart';
import 'package:flutter/material.dart';
import 'package:kwstas_s_application2/core/app_export.dart';

class SthWentWrongScreen extends StatelessWidget {
  const SthWentWrongScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SthWentWrongBloc>(
      create: (context) => SthWentWrongBloc(SthWentWrongState(
        sthWentWrongModelObj: SthWentWrongModel(),
      ))
        ..add(SthWentWrongInitialEvent()),
      child: SthWentWrongScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SthWentWrongBloc, SthWentWrongState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 8.h,
                vertical: 18.v,
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath:
                              ImageConstant.imgEvaArrowBackOutlineBlack900,
                          height: 39.v,
                          width: 36.h,
                          margin: EdgeInsets.only(bottom: 99.v),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgGroupPrimary,
                          height: 102.v,
                          width: 64.h,
                          margin: EdgeInsets.only(
                            left: 135.h,
                            top: 36.v,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 79.v),
                  Container(
                    width: 339.h,
                    margin: EdgeInsets.only(
                      left: 33.h,
                      right: 40.h,
                    ),
                    child: Text(
                      "msg_oops_something".tr,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.headlineSmallInterBlack900,
                    ),
                  ),
                  Spacer(),
                  SizedBox(height: 18.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgServerSecureIllustration,
                    height: 287.v,
                    width: 405.h,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
