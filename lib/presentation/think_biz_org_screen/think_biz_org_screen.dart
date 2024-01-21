import 'bloc/think_biz_org_bloc.dart';import 'models/think_biz_org_model.dart';import 'package:flutter/material.dart';import 'package:kwstas_s_application2/core/app_export.dart';import 'package:kwstas_s_application2/widgets/app_bar/appbar_leading_image.dart';import 'package:kwstas_s_application2/widgets/app_bar/appbar_title.dart';import 'package:kwstas_s_application2/widgets/app_bar/appbar_trailing_image.dart';import 'package:kwstas_s_application2/widgets/app_bar/custom_app_bar.dart';import 'package:kwstas_s_application2/widgets/custom_elevated_button.dart';import 'package:kwstas_s_application2/widgets/custom_text_form_field.dart';class ThinkBizOrgScreen extends StatelessWidget {const ThinkBizOrgScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<ThinkBizOrgBloc>(create: (context) => ThinkBizOrgBloc(ThinkBizOrgState(thinkBizOrgModelObj: ThinkBizOrgModel()))..add(ThinkBizOrgInitialEvent()), child: ThinkBizOrgScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 7.v), child: Padding(padding: EdgeInsets.only(left: 12.h, right: 12.h, bottom: 5.v), child: Column(children: [Text("msg_unleash_your_academic".tr, style: theme.textTheme.bodyLarge), SizedBox(height: 40.v), _buildThinkBiz(context), SizedBox(height: 47.v), Padding(padding: EdgeInsets.only(left: 31.h, right: 35.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgMdiLocationRadiusOutline, height: 45.v, width: 43.h, margin: EdgeInsets.only(bottom: 2.v)), Container(height: 36.v, width: 292.h, margin: EdgeInsets.only(left: 5.h, top: 11.v), child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.center, child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("lbl_aegaleo_athens".tr, style: CustomTextStyles.headlineSmallBlack900), CustomImageView(imagePath: ImageConstant.imgVectorGray70001, height: 17.v, width: 16.h, margin: EdgeInsets.only(left: 64.h, top: 8.v, bottom: 9.v))])), Align(alignment: Alignment.bottomCenter, child: Padding(padding: EdgeInsets.only(bottom: 1.v), child: SizedBox(width: 292.h, child: Divider(color: appTheme.gray600))))]))])), SizedBox(height: 33.v), Padding(padding: EdgeInsets.only(left: 31.h, right: 35.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgMingcuteTimeLine, height: 42.v, width: 43.h), Container(height: 36.v, width: 292.h, margin: EdgeInsets.only(left: 5.h, top: 6.v), child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.center, child: Container(width: 272.h, margin: EdgeInsets.only(left: 12.h, right: 8.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_13_may_2023".tr, style: CustomTextStyles.headlineSmallBlack900), CustomImageView(imagePath: ImageConstant.imgPhXCircleFillGray70001, height: 21.v, width: 20.h, margin: EdgeInsets.only(top: 6.v, bottom: 7.v))]))), Align(alignment: Alignment.bottomCenter, child: Padding(padding: EdgeInsets.only(bottom: 2.v), child: SizedBox(width: 292.h, child: Divider(color: appTheme.gray600))))]))])), SizedBox(height: 35.v), Padding(padding: EdgeInsets.only(left: 30.h, right: 35.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgRiMoneyDollarCircleLine, height: 43.v, width: 45.h), Expanded(child: Padding(padding: EdgeInsets.only(left: 4.h, bottom: 3.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 12.h), child: Text("lbl_free".tr, style: CustomTextStyles.headlineSmallBlack900)), SizedBox(height: 1.v), Divider(color: appTheme.gray600)])))])), SizedBox(height: 55.v), _buildDescription(context), SizedBox(height: 83.v), Container(width: 320.h, margin: EdgeInsets.only(left: 43.h, right: 41.h), child: Text("msg_users_that_have".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.headlineSmallBlack900SemiBold)), SizedBox(height: 49.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 14.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgPlay, height: 72.adaptSize, width: 72.adaptSize), Padding(padding: EdgeInsets.only(left: 29.h, bottom: 3.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_demo_user".tr, style: CustomTextStyles.headlineSmallBlack900_1), Text("lbl_not_booked".tr, style: CustomTextStyles.titleLargeGray50001)]))]))), SizedBox(height: 105.v), Container(width: 370.h, margin: EdgeInsets.only(left: 17.h, right: 18.h), child: Text("msg_users_that_have2".tr, maxLines: 3, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.headlineSmallBlack900SemiBold)), SizedBox(height: 26.v), Text("msg_sorry_there_are".tr, style: CustomTextStyles.titleLargeGray50001), SizedBox(height: 180.v), CustomImageView(imagePath: ImageConstant.imgGroupPrimary, height: 102.v, width: 64.h)])))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 69.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgSettings, margin: EdgeInsets.only(left: 24.h, top: 15.v, bottom: 16.v)), title: AppbarTitle(text: "lbl_univentures".tr, margin: EdgeInsets.only(left: 18.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgOcticonThreeBars16, margin: EdgeInsets.fromLTRB(33.h, 33.v, 33.h, 32.v), onTap: () {onTapOcticonThreeBarsSixteen(context);})], styleType: Style.bgOutline); } 
/// Section Widget
Widget _buildChangePhoto(BuildContext context) { return Align(alignment: Alignment.centerRight, child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Align(alignment: Alignment.centerRight, child: Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgIconamoonStarFill, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(top: 4.v, bottom: 7.v)), Padding(padding: EdgeInsets.only(left: 6.h), child: Text("lbl_4_9".tr, style: CustomTextStyles.headlineSmallBlack900))])), SizedBox(height: 35.v), SizedBox(height: 308.v, width: 320.h, child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgThinkbiz2, height: 308.v, width: 320.h, alignment: Alignment.center), CustomElevatedButton(height: 27.v, width: 128.h, text: "lbl_change_photo".tr, margin: EdgeInsets.only(right: 6.h, bottom: 8.v), buttonStyle: CustomButtonStyles.fillIndigoATL13, buttonTextStyle: theme.textTheme.labelLarge!, alignment: Alignment.bottomRight)]))])); } 
/// Section Widget
Widget _buildThinkBiz(BuildContext context) { return SizedBox(height: 393.v, width: 368.h, child: Stack(alignment: Alignment.centerRight, children: [Align(alignment: Alignment.topLeft, child: Text("lbl_thinkbiz".tr, style: CustomTextStyles.displayMediumSemiBold)), _buildChangePhoto(context)])); } 
/// Section Widget
Widget _buildDescription(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 115.h), child: Text("lbl_description".tr, style: CustomTextStyles.headlineSmallBlack900SemiBold)), SizedBox(height: 12.v), BlocSelector<ThinkBizOrgBloc, ThinkBizOrgState, TextEditingController?>(selector: (state) => state.descriptionController, builder: (context, descriptionController) {return CustomTextFormField(controller: descriptionController, hintText: "msg_thinkbiz_is_an_inspiring".tr, hintStyle: CustomTextStyles.titleLargeBlack900Light, textInputAction: TextInputAction.done, suffix: Container(margin: EdgeInsets.fromLTRB(-9.h, 30.v, 5.h, 6.v), child: CustomImageView(imagePath: ImageConstant.imgJamwrite, height: 24.adaptSize, width: 24.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 140.v), maxLines: 4, contentPadding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 6.v), borderDecoration: TextFormFieldStyleHelper.outlineBlack1, filled: false);})]); } 
/// Navigates to the homeListOrgScreen when the action is triggered.
onTapOcticonThreeBarsSixteen(BuildContext context) { NavigatorService.pushNamed(AppRoutes.homeListOrgScreen, ); } 
 }
