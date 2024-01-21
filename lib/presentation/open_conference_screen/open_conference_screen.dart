import 'bloc/open_conference_bloc.dart';
import 'models/open_conference_model.dart';
import 'package:flutter/material.dart';
import 'package:kwstas_s_application2/core/app_export.dart';
import 'package:kwstas_s_application2/widgets/custom_text_form_field.dart';

class OpenConferenceScreen extends StatelessWidget {
  const OpenConferenceScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OpenConferenceBloc>(
      create: (context) => OpenConferenceBloc(OpenConferenceState(
        OpenConferenceModelObj: OpenConferenceModel(),
      ))
        ..add(OpenConferenceInitialEvent()),
      child: OpenConferenceScreen(),
    );
  }

  @override
  Widget build(BuildContext context) => BlocBuilder<
      OpenConferenceBloc,
      OpenConferenceState
  >(builder: (context, state){
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 20.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 7.h,
                      right: 7.h,
                      bottom: 2.v,
                    ),
                    child: Column(
                      children: [
                        _buildSettingsRow(context),
                        SizedBox(height: 7.v),
                        Text(
                          "msg_unleash_your_academic".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                        SizedBox(height: 61.v),
                        _buildTechnologyRow(context),
                        SizedBox(height: 57.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgOpenai1308x320,
                          height: 308.v,
                          width: 320.h,
                        ),
                        SizedBox(height: 31.v),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 62.h,
                              right: 14.h,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgMdiLocationRadiusOutline,
                                  height: 45.v,
                                  width: 43.h,
                                  margin: EdgeInsets.only(bottom: 2.v),
                                ), Expanded(child: 
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 7.h,
                                    top: 11.v,
                                  ),
                                  child: Text(
                                    "msg_megaro_mousikis".tr,
                                    style:
                                        CustomTextStyles.headlineSmallBlack900,
                                  ),
                                ),
                            )
                            ],
                            ),
                          ),
                        ),
                        SizedBox(height: 17.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 62.h),
                            child: Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgMingcuteTimeLine,
                                  height: 42.v,
                                  width: 43.h,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 7.h,
                                    top: 6.v,
                                  ),
                                  child: Text(
                                    "lbl_02_may_2023".tr,
                                    style:
                                        CustomTextStyles.headlineSmallBlack900,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 19.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            height: 90.v,
                            width: 275.h,
                            margin: EdgeInsets.only(left: 62.h),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 54.h,
                                      top: 1.v,
                                    ),
                                    child: Text(
                                      "lbl_503".tr,
                                      style: CustomTextStyles
                                          .headlineSmallBlack900,
                                    ),
                                  ),
                                ),
                                    Align(
                                    alignment: Alignment.centerLeft,
    child: Container(
    height: 90.v,
    width: 275.h,
    margin: EdgeInsets.only(left: 62.h),
    child: Stack(
    alignment: Alignment.center,
    children: [
    Align(
    alignment: Alignment.topLeft,
    child: Padding(
    padding: EdgeInsets.only(left: 54.h, top: 1.v),
    child: Text("".tr, style: CustomTextStyles.headlineSmallBlack900),
    ),
    )]))),
    Align(
    alignment: Alignment.center,
    child: GestureDetector(
    onTap: () {
    NavigatorService.pushNamed(AppRoutes.bookNowLinkScreen);
    context.read<OpenConferenceBloc>().add(BookEvent(eventId: "openconference"));
    },
    child: Container(
    alignment: Alignment.center,
    padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
    color: Colors.transparent,
    child: Text(state.isBooked ? "Booked" : "Book Now", style: CustomTextStyles.bodyLargeLightblueA700),
    ),
    ),
    ),
    Align(
    alignment: Alignment.topLeft,
    child: CustomImageView(
    imagePath: ImageConstant.imgRiMoneyDollarCircleLine,
    height: 43.v,
    width: 45.h,
    ),
    ),
    ],
    ),
    ),
    ),
      ]))))]
          ))));});



  /// Section Widget
  Widget _buildSettingsRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder50,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgSettings,
            height: 68.v,
            width: 45.h,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              top: 8.v,
              bottom: 12.v,
            ),
            child: Text(
              "lbl_univentures".tr,
              style: theme.textTheme.headlineLarge,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgOcticonThreeBars16,
            height: 35.v,
            width: 30.h,
            margin: EdgeInsets.only(
              top: 17.v,
              right: 6.h,
              bottom: 16.v,
            ), onTap: () {onTapImgOcticonThreeBarsSixteen(context);}
          ),
        ],
      ),
    );
  }

  /// Section Widget
 Widget _buildTechnologyRow(BuildContext context) => BlocBuilder<
        OpenConferenceBloc,
        OpenConferenceState
    >(builder: (context, state){
    return Padding(
      padding: EdgeInsets.only(
        left: 34.h,
        right: 14.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_technology".tr,
                style: CustomTextStyles.titleLargeBlack900,
              ),
              SizedBox(height: 3.v),
              Text(
                "lbl_open_conference".tr,
                style: CustomTextStyles.headlineSmallBlack900SemiBold,
              ),
            ],
          ),
          CustomImageView(
            imagePath: ImageConstant.imgIconamoonStarFill,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 27.h,
              top: 35.v,
              bottom: 9.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 5.h,
              top: 31.v,
              bottom: 2.v,
            ),
            child: Text(
              "lbl_5_0".tr,
              style: CustomTextStyles.headlineSmallBlack900,
            ),
          ),
          GestureDetector(
            onTap: () => context.read<OpenConferenceBloc>().add(FavoriteEvent(eventId: "openconference")),
            child: Icon(state.isFavorited ? Icons.favorite : Icons.favorite_border),
          )
        ],
      ),
    );
  });
onTapImgOcticonThreeBarsSixteen(BuildContext context) { NavigatorService.pushNamed(AppRoutes.homeListScreen, ); }}
