import 'bloc/my_progress_bloc.dart';
import 'models/my_progress_model.dart';
import 'package:flutter/material.dart';
import 'package:kwstas_s_application2/core/app_export.dart';
import 'package:kwstas_s_application2/widgets/custom_text_form_field.dart';

class MyProgressScreen extends StatelessWidget {
  const MyProgressScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<MyProgressBloc>(
      create: (context) => MyProgressBloc(MyProgressState(
        myProgressModelObj: MyProgressModel(),
      ))
        ..add(MyProgressInitialEvent()),
      child: MyProgressScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 6.h,
            vertical: 20.v,
          ),
          child: Column(
            children: [
              _buildSettingsRow(context),
              SizedBox(height: 7.v),
              Text(
                "msg_unleash_your_academic".tr,
                style: theme.textTheme.bodyLarge,
              ),
              SizedBox(height: 5.v),
              Text(
                "lbl_my_progress2".tr,
                style: theme.textTheme.displayLarge,
              ),
              SizedBox(height: 6.v),
              _buildCharmTickRow(context),
              SizedBox(height: 27.v),
              _buildEventFiveEditText(context),
              SizedBox(height: 27.v),
              _buildTedxEventEditText1(context),
              SizedBox(height: 27.v),
              _buildTedxEventEditText2(context),
              SizedBox(height: 27.v),
              _buildTedxEventEditText3(context),
              SizedBox(height: 6.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildAkariconscircleEditText(context),
      ),
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
              bottom: 16.v,),              
              onTap: () {onTapImgOcticonThreeBarsSixteen(context);}
         ),
        ],
      ),
    );
  }
onTapImgOcticonThreeBarsSixteen(BuildContext context) { NavigatorService.pushNamed(AppRoutes.homeListScreen, ); } 

  /// Section Widget
  Widget _buildCharmTickRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 16.h,
        right: 19.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlinePrimary4.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 29.v,
            width: 27.h,
            margin: EdgeInsets.only(bottom: 4.v),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgAkarIconsCircle,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.bottomLeft,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgCharmTick,
                  height: 29.v,
                  width: 26.h,
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: Text(
              "lbl_attend_5_events".tr,
              style: CustomTextStyles.titleLargePrimary,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEventFiveEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 19.h,
      ),
      child:
          BlocSelector<MyProgressBloc, MyProgressState, TextEditingController?>(
        selector: (state) => state.eventFiveEditTextController,
        builder: (context, eventFiveEditTextController) {
          return CustomTextFormField(
            controller: eventFiveEditTextController,
            hintText: "msg_attend_10_events".tr,
            hintStyle: CustomTextStyles.titleLargePrimary,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(19.h, 20.v, 8.h, 19.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgAkarIconsCircle,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 63.v,
            ),
            contentPadding: EdgeInsets.only(
              top: 16.v,
              right: 30.h,
              bottom: 16.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTedxEventEditText1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 19.h,
      ),
      child:
          BlocSelector<MyProgressBloc, MyProgressState, TextEditingController?>(
        selector: (state) => state.tedxEventEditText1Controller,
        builder: (context, tedxEventEditText1Controller) {
          return CustomTextFormField(
            controller: tedxEventEditText1Controller,
            hintText: "msg_attend_your_1st".tr,
            hintStyle: CustomTextStyles.titleLargePrimary,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(21.h, 20.v, 6.h, 19.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgAkariconscirclePrimary,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 63.v,
            ),
            contentPadding: EdgeInsets.only(
              top: 16.v,
              right: 30.h,
              bottom: 16.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.outlinePrimaryTL20,
            fillColor: theme.colorScheme.primary.withOpacity(0.21),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTedxEventEditText2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 19.h,
      ),
      child:
          BlocSelector<MyProgressBloc, MyProgressState, TextEditingController?>(
        selector: (state) => state.tedxEventEditText2Controller,
        builder: (context, tedxEventEditText2Controller) {
          return CustomTextFormField(
            controller: tedxEventEditText2Controller,
            hintText: "msg_attend_your_1st2".tr,
            hintStyle: CustomTextStyles.titleLargePrimary,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(19.h, 25.v, 8.h, 16.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgAkarIconsCircle,
                height: 21.v,
                width: 24.h,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 63.v,
            ),
            contentPadding: EdgeInsets.only(
              top: 16.v,
              right: 30.h,
              bottom: 16.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTedxEventEditText3(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 19.h,
      ),
      child:
          BlocSelector<MyProgressBloc, MyProgressState, TextEditingController?>(
        selector: (state) => state.tedxEventEditText3Controller,
        builder: (context, tedxEventEditText3Controller) {
          return CustomTextFormField(
            controller: tedxEventEditText3Controller,
            hintText: "msg_attend_your_1st3".tr,
            hintStyle: CustomTextStyles.titleLargePrimary,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(21.h, 21.v, 6.h, 20.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgAkarIconsCircle,
                height: 21.v,
                width: 24.h,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 63.v,
            ),
            contentPadding: EdgeInsets.only(
              top: 16.v,
              right: 30.h,
              bottom: 16.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildAkariconscircleEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 22.h,
        right: 25.h,
        bottom: 28.v,
      ),
      child:
          BlocSelector<MyProgressBloc, MyProgressState, TextEditingController?>(
        selector: (state) => state.akariconscircleEditTextController,
        builder: (context, akariconscircleEditTextController) {
          return CustomTextFormField(
            controller: akariconscircleEditTextController,
            hintText: "msg_attend_your_1st4".tr,
            hintStyle: CustomTextStyles.titleLargePrimary,
            textInputAction: TextInputAction.done,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(21.h, 21.v, 6.h, 20.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgAkariconscirclePrimary,
                height: 21.v,
                width: 24.h,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 63.v,
            ),
            contentPadding: EdgeInsets.only(
              top: 16.v,
              right: 30.h,
              bottom: 16.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.outlinePrimaryTL201,
            fillColor: theme.colorScheme.primary.withOpacity(0.21),
          );
        },
      ),
    );
  }
}
