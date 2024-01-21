import 'bloc/events_bloc.dart';import 'models/events_model.dart';import 'package:flutter/material.dart';import 'package:kwstas_s_application2/core/app_export.dart';import 'package:kwstas_s_application2/widgets/app_bar/appbar_leading_image.dart';import 'package:kwstas_s_application2/widgets/app_bar/appbar_title.dart';import 'package:kwstas_s_application2/widgets/app_bar/appbar_trailing_image.dart';import 'package:kwstas_s_application2/widgets/app_bar/custom_app_bar.dart';import 'package:kwstas_s_application2/widgets/custom_outlined_button.dart';class EventsScreen extends StatelessWidget {const EventsScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<EventsBloc>(create: (context) => EventsBloc(EventsState(eventsModelObj: EventsModel()))..add(EventsInitialEvent()), child: EventsScreen()); } 
 @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventsBloc, EventsState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: SizeUtils.width,
              child: SingleChildScrollView(
                padding: EdgeInsets.only(top: 7.v),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 23.h, right: 23.h, bottom: 5.v),
                  child: Column(
                    children: [
                      Text("msg_unleash_your_academic".tr,
                          style: theme.textTheme.bodyLarge),
                      SizedBox(height: 22.v),
                      Text("lbl_events2".tr,
                          style: theme.textTheme.displayLarge),
                      SizedBox(height: 40.v),
                      CustomOutlinedButton(
                        text: "msg_recommended_events".tr,
                        buttonStyle: CustomButtonStyles.outlinePrimaryTL20,
                        buttonTextStyle:
                            CustomTextStyles.headlineSmallPrimarySemiBold,
                        onPressed: () {
                          onTapRecommendedEventsForYou(context);
                        },
                      ),
                      SizedBox(height: 35.v),
                      _buildEventCategories(context),
                      SizedBox(height: 48.v),
                      GestureDetector(
                        onTap: () {
                          // Replace with the correct navigation code
                          Navigator.of(context).pushNamed(AppRoutes.thinkBizScreen);
                        },
                        child: _buildThinkbizOne(context),
                      ),
                      SizedBox(height: 48.v),
                      GestureDetector(
                        onTap: () {
                          // Replace with the correct navigation code
                          Navigator.of(context).pushNamed(AppRoutes.planBizScreen);
                        },
                        child: _buildPlanbizOne(context),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 69.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgSettings, margin: EdgeInsets.only(left: 24.h, top: 15.v, bottom: 16.v)), title: AppbarTitle(text: "lbl_univentures".tr, margin: EdgeInsets.only(left: 18.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgOcticonThreeBars16, margin: EdgeInsets.fromLTRB(33.h, 33.v, 33.h, 32.v), onTap: () {onTapOcticonThreeBarsSixteen(context);})], styleType: Style.bgOutline); } 
/// Section Widget
Widget _buildEventCategories(BuildContext context) { return SizedBox(height: 63.v, width: 383.h, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.bottomCenter, child: Padding(padding: EdgeInsets.only(bottom: 11.v), child: Text("msg_event_categories".tr, style: CustomTextStyles.headlineSmallPrimarySemiBold))), Align(alignment: Alignment.center, child: GestureDetector(onTap: () {onTapView(context);}, child: Container(height: 63.v, width: 383.h, decoration: BoxDecoration(color: theme.colorScheme.primary.withOpacity(0.21), borderRadius: BorderRadius.circular(20.h), border: Border.all(color: theme.colorScheme.primary, width: 1.h)))))])); } 
/// Section Widget
Widget _buildThinkbizOne(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 6.h, right: 5.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [SizedBox(height: 199.v, width: 154.h, child: Stack(alignment: Alignment.bottomCenter, children: [CustomImageView(imagePath: ImageConstant.imgThinkbiz1, height: 154.adaptSize, width: 154.adaptSize, alignment: Alignment.topCenter), _buildTwentyOne(context, heartImage: ImageConstant.imgPhHeartBold, dateText: "lbl_15_may_2023".tr, techConnectText: "lbl_thinkbiz".tr, keramikosText: "lbl_aegaleo_athens".tr)])), SizedBox(height: 199.v, width: 154.h, child: Stack(alignment: Alignment.bottomCenter, children: [CustomImageView(imagePath: ImageConstant.imgTechconnect1, height: 154.v, width: 147.h, alignment: Alignment.topLeft), _buildTwentyOne(context, heartImage: ImageConstant.imgPhHeartBold, dateText: "lbl_02_may_2023".tr, techConnectText: "lbl_techconnect".tr, keramikosText: "msg_keramikos_athens".tr),GestureDetector(
                        onTap: () {
                          // Replace with the correct navigation code
                          Navigator.of(context).pushNamed(AppRoutes.techconnectScreen);
                        })]))])); } 
/// Section Widget
Widget _buildPlanbizOne(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 5.h), child: Column(children: [Padding(padding: EdgeInsets.only(left: 1.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Column(children: [SizedBox(height: 154.adaptSize, width: 154.adaptSize, child: Stack(alignment: Alignment.topCenter, children: [CustomImageView(imagePath: ImageConstant.imgPlanbiz1, height: 154.adaptSize, width: 154.adaptSize, alignment: Alignment.center), Align(alignment: Alignment.topCenter, child: Padding(padding: EdgeInsets.only(left: 6.h, top: 6.v, right: 6.h), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgPhHeartBold, height: 25.v, width: 23.h, alignment: Alignment.centerRight), SizedBox(height: 91.v), Container(width: 83.h, padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 1.v), decoration: AppDecoration.fillOnPrimary.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Text("lbl_25_may_2023".tr, style: theme.textTheme.bodySmall))])))])), _buildPlanBiz(context, planBizText: "lbl_planbiz".tr, marousiAthensText: "lbl_marousi_athens".tr)]), GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(AppRoutes.openConferenceScreen);
                },child:Column(children: [SizedBox(height: 154.adaptSize, width: 154.adaptSize, child: Stack(alignment: Alignment.topRight, children: [CustomImageView(imagePath: ImageConstant.imgOpenai1, height: 154.adaptSize, width: 154.adaptSize, alignment: Alignment.center), Align(alignment: Alignment.topRight, child: Padding(padding: EdgeInsets.only(right: 5.h), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgPhHeartBold, height: 28.v, width: 26.h, alignment: Alignment.centerRight), SizedBox(height: 97.v), Container(width: 83.h, padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 1.v), decoration: AppDecoration.fillBlueGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Text("lbl_02_may_2023".tr, style: theme.textTheme.bodySmall))])))])), _buildPlanBiz(context, planBizText: "lbl_open_conference".tr, marousiAthensText: "msg_megaro_mousikis".tr)]))])), SizedBox(height: 51.v), Padding(padding: EdgeInsets.only(left: 1.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(AppRoutes.partyAtNtuaScreen);
                },child:Column(children: [SizedBox(height: 154.adaptSize, width: 154.adaptSize, child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgNtuaParty1, height: 154.adaptSize, width: 154.adaptSize, alignment: Alignment.center), Align(alignment: Alignment.center, child: SizedBox(height: 154.adaptSize, width: 154.adaptSize, child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgNtuaParty1, height: 154.adaptSize, width: 154.adaptSize, alignment: Alignment.center), Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.symmetric(horizontal: 8.h), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgPhHeartBold, height: 24.v, width: 22.h, alignment: Alignment.centerRight), SizedBox(height: 95.v), Card(clipBehavior: Clip.antiAlias, elevation: 0, color: theme.colorScheme.onPrimary.withOpacity(1), shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.roundedBorder10), child: Container(height: 21.v, width: 83.h, padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 1.v), decoration: AppDecoration.fillOnPrimary.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.bottomCenter, child: Text("lbl_30_may_2023".tr, style: theme.textTheme.bodySmall)), Align(alignment: Alignment.bottomCenter, child: Text("lbl_30_may_2023".tr, style: theme.textTheme.bodySmall))])))])))])))])), _buildPlanBiz(context, planBizText: "lbl_party_at_ntua".tr, marousiAthensText: "msg_zografou_athens".tr),])), GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(AppRoutes.tedxauebPangeaMainEventScreen);
                },child: Column(children: [SizedBox(height: 154.adaptSize, width: 154.adaptSize, child: Stack(alignment: Alignment.centerRight, children: [CustomImageView(imagePath: ImageConstant.imgFsdet1, height: 154.adaptSize, width: 154.adaptSize, alignment: Alignment.center), Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(right: 6.h), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgPhHeartBold, height: 27.v, width: 26.h, alignment: Alignment.centerRight), SizedBox(height: 92.v), Container(width: 83.h, padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 1.v), decoration: AppDecoration.fillOnPrimary.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Text("lbl_30_may_2023".tr, style: theme.textTheme.bodySmall))])))])), _buildPlanBiz(context, planBizText: "msg_fsdet_sustainability".tr, marousiAthensText: "msg_keramikos_athens".tr)]))])), SizedBox(height: 48.v), Padding(padding: EdgeInsets.only(left: 1.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(AppRoutes.tedxauebPangeaMainEventScreen);
                },child:Column(children: [SizedBox(height: 154.adaptSize, width: 154.adaptSize, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.bottomLeft, child: Container(margin: EdgeInsets.only(left: 8.h, bottom: 6.v), padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 1.v), decoration: AppDecoration.fillBlueGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 2.v), Text("lbl_25_may_2023".tr, style: theme.textTheme.bodySmall)]))), Align(alignment: Alignment.center, child: SizedBox(height: 154.adaptSize, width: 154.adaptSize, child: Stack(alignment: Alignment.topRight, children: [CustomImageView(imagePath: ImageConstant.imgPangea1, height: 154.adaptSize, width: 154.adaptSize, alignment: Alignment.center), CustomImageView(imagePath: ImageConstant.imgPhHeartBold, height: 28.v, width: 26.h, alignment: Alignment.topRight, margin: EdgeInsets.only(top: 6.v))])))])), _buildPlanBiz(context, planBizText: "msg_tedxaueb_pangea".tr, marousiAthensText: "msg_viktoria_athens".tr)])), Column(children: [SizedBox(height: 154.adaptSize, width: 154.adaptSize, child: Stack(alignment: Alignment.centerRight, children: [CustomImageView(imagePath: ImageConstant.imgPlay1, height: 154.adaptSize, width: 154.adaptSize, alignment: Alignment.center), Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(right: 6.h), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgPhHeartBold, height: 24.v, width: 22.h, alignment: Alignment.centerRight), SizedBox(height: 97.v), Container(width: 83.h, padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 1.v), decoration: AppDecoration.fillOnPrimary.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Text("lbl_15_may_2023".tr, style: theme.textTheme.bodySmall))])))])), _buildPlanBiz(context, planBizText: "msg_tedxntua_play_main".tr, marousiAthensText: "msg_zografou_athens".tr)])]))])); }
/// Common widget
Widget _buildTwentyOne(BuildContext context, {required String heartImage, required String dateText, required String techConnectText, required String keramikosText, }) { return Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: heartImage, height: 28.v, width: 26.h, alignment: Alignment.centerRight, margin: EdgeInsets.only(right: 7.h)), SizedBox(height: 74.v), Container(width: 83.h, margin: EdgeInsets.only(left: 14.h), padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 1.v), decoration: AppDecoration.fillBlueGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Text(dateText, style: theme.textTheme.bodySmall!.copyWith(color: appTheme.black900))), SizedBox(height: 8.v), Container(width: 154.h, padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 1.v), decoration: AppDecoration.outlineOnPrimary, child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 2.v), Text(techConnectText, style: CustomTextStyles.labelLargePoppinsBlack900.copyWith(color: appTheme.black900)), SizedBox(height: 4.v), Text(keramikosText, style: theme.textTheme.bodySmall!.copyWith(color: appTheme.black900))]))]); } 
/// Common widget
Widget _buildPlanBiz(BuildContext context, {required String planBizText, required String marousiAthensText, }) { return Container(width: 154.h, padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 1.v), decoration: AppDecoration.outlineOnPrimary, child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 1.v), Text(planBizText, style: CustomTextStyles.labelLargePoppinsBlack900.copyWith(color: appTheme.black900)), SizedBox(height: 6.v), Text(marousiAthensText, style: theme.textTheme.bodySmall!.copyWith(color: appTheme.black900))])); } 
/// Navigates to the homeListScreen when the action is triggered.
onTapOcticonThreeBarsSixteen(BuildContext context) { NavigatorService.pushNamed(AppRoutes.homeListScreen, ); } 
/// Navigates to the popularEventsScreen when the action is triggered.
onTapRecommendedEventsForYou(BuildContext context) { NavigatorService.pushNamed(AppRoutes.popularEventsScreen, ); } 
/// Navigates to the eventCategoriesScreen when the action is triggered.
onTapView(BuildContext context) { NavigatorService.pushNamed(AppRoutes.eventCategoriesScreen, ); } 
 }

