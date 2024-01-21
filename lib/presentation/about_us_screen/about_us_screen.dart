import 'bloc/about_us_bloc.dart';
import 'models/about_us_model.dart';
import 'package:flutter/material.dart';
import 'package:kwstas_s_application2/core/app_export.dart';
import 'package:kwstas_s_application2/widgets/custom_icon_button.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AboutUsBloc>(
      create: (context) => AboutUsBloc(AboutUsState(
        aboutUsModelObj: AboutUsModel(),
      ))
        ..add(AboutUsInitialEvent()),
      child: AboutUsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AboutUsBloc, AboutUsState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 6.h,
                vertical: 20.v,
              ),
              child: SingleChildScrollView(child: Column(
                children: [
                  _buildSettingsRow(context),
                  SizedBox(height: 7.v),
                  Text(
                    "msg_unleash_your_academic".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                  SizedBox(height: 40.v),
                  SizedBox(
                    height: 117.v,
                    width: 331.h,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            "lbl_about_us2".tr,
                            style: theme.textTheme.displayLarge,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "msg_need_help_feel".tr,
                            style: CustomTextStyles.titleLargeInterBlack900_2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 37.v),
                  SizedBox(
                    height: 175.v,
                    width: 307.h,
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "lbl_uni".tr,
                                  style: theme.textTheme.displayMedium,
                                ),
                                TextSpan(
                                  text: "lbl_ventures".tr,
                                  style:
                                      CustomTextStyles.displayMediumPrimary_1,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgLogo1,
                          height: 100.v,
                          width: 144.h,
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(left: 71.h),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgLink,
                        height: 38.adaptSize,
                        width: 38.adaptSize,
                        margin: EdgeInsets.only(
                          top: 1.v,
                          bottom: 2.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 30.h,
                          top: 1.v,
                          bottom: 3.v,
                        ),
                        child: CustomIconButton(
                          height: 38.adaptSize,
                          width: 38.adaptSize,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgSkillIconsInstagram,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 30.h,
                          top: 1.v,
                          bottom: 3.v,
                        ),
                        child: CustomIconButton(
                          height: 38.adaptSize,
                          width: 38.adaptSize,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgGroup352,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 29.h),
                        child: CustomIconButton(
                          height: 42.v,
                          width: 38.h,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgFa6BrandsSquareXTwitter,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 36.v),
                  Container(
                    width: 316.h,
                    margin: EdgeInsets.only(
                      left: 48.h,
                      right: 53.h,
                    ),
                    child: Text(
                      "msg_you_can_read_our".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.headlineSmallBlack900,
                    ),
                  ),
                  Text(
                    "lbl_here".tr,
                    style: CustomTextStyles.headlineSmallBlueA400,
                  ),
                  SizedBox(height: 33.v),
                  CustomImageView(
                    imagePath: ImageConstant.img,
                    height: 93.adaptSize,
                    width: 93.adaptSize,
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
          )),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSettingsRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2.h),
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder50,
      ),
      child: Row(
        children: [
          SizedBox(
            height: 68.v,
            width: 45.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgSettings,
                  height: 68.v,
                  width: 45.h,
                  alignment: Alignment.center,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgSettings,
                  height: 68.v,
                  width: 45.h,
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
          Container(
            height: 48.v,
            width: 204.h,
            margin: EdgeInsets.only(
              left: 18.h,
              top: 8.v,
              bottom: 12.v,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "lbl_univentures".tr,
                    style: theme.textTheme.headlineLarge,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "lbl_univentures".tr,
                    style: theme.textTheme.headlineLarge,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            height: 35.v,
            width: 30.h,
            margin: EdgeInsets.only(
              top: 17.v,
              right: 6.h,
              bottom: 17.v,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgOcticonThreeBars16,
                  height: 35.v,
                  width: 30.h,
                  alignment: Alignment.center,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgOcticonThreeBars16,
                  height: 35.v,
                  width: 30.h,
                  alignment: Alignment.center,onTap: () {onTapImgOcticonThreeBarsSixteen(context);}
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
onTapImgOcticonThreeBarsSixteen(BuildContext context) { NavigatorService.pushNamed(AppRoutes.homeListScreen, ); } 
