import 'bloc/event_categories_bloc.dart';import 'models/event_categories_model.dart';import 'package:flutter/material.dart';import 'package:kwstas_s_application2/core/app_export.dart';import 'package:kwstas_s_application2/widgets/custom_outlined_button.dart';class EventCategoriesScreen extends StatelessWidget {const EventCategoriesScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<EventCategoriesBloc>(create: (context) => EventCategoriesBloc(EventCategoriesState(eventCategoriesModelObj: EventCategoriesModel()))..add(EventCategoriesInitialEvent()), child: EventCategoriesScreen()); } 
@override Widget build(BuildContext context) { return BlocBuilder<EventCategoriesBloc, EventCategoriesState>(builder: (context, state) {return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 20.v), child: Column(children: [_buildEightyThreeRow(context), SizedBox(height: 7.v), Text("msg_unleash_your_academic".tr, style: theme.textTheme.bodyLarge), SizedBox(height: 53.v), Text("msg_event_categories".tr, style: CustomTextStyles.displayMediumPrimary40), SizedBox(height: 45.v), _buildStartUpsButton(context), SizedBox(height: 35.v), _buildTechnologyButton(context), SizedBox(height: 35.v), _buildTedxEventsButton(context), SizedBox(height: 35.v), _buildUniversityButton(context), SizedBox(height: 5.v)]))));}); } 
/// Section Widget
Widget _buildEightyThreeRow(BuildContext context) { return Container(margin: EdgeInsets.only(right: 2.h), padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 14.v), decoration: AppDecoration.outlinePrimary.copyWith(borderRadius: BorderRadiusStyle.circleBorder50), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgSettings, height: 68.v, width: 45.h), Padding(padding: EdgeInsets.only(left: 18.h, top: 8.v, bottom: 12.v), child: Text("lbl_univentures".tr, style: theme.textTheme.headlineLarge)), Spacer(), CustomImageView(imagePath: ImageConstant.imgOcticonThreeBars16, height: 35.v, width: 30.h, margin: EdgeInsets.only(top: 17.v, right: 6.h, bottom: 16.v), onTap: () {onTapImgOcticonThreeBarsSixteen(context);})])); } 
/// Section Widget
Widget _buildStartUpsButton(BuildContext context) { return CustomOutlinedButton(text: "lbl_startups".tr, margin: EdgeInsets.only(left: 39.h, right: 38.h), buttonStyle: CustomButtonStyles.outlinePrimaryTL201, buttonTextStyle: CustomTextStyles.headlineSmallOnPrimarySemiBold, onPressed: () {onTapStartUpsButton(context);}); } 
/// Section Widget
Widget _buildTechnologyButton(BuildContext context) { return CustomOutlinedButton(text: "lbl_technology".tr, margin: EdgeInsets.only(left: 39.h, right: 38.h), buttonStyle: CustomButtonStyles.outlinePrimaryTL201, buttonTextStyle: CustomTextStyles.headlineSmallOnPrimarySemiBold, onPressed: () {onTapTechnologyButton(context);}); } 
/// Section Widget
Widget _buildTedxEventsButton(BuildContext context) { return CustomOutlinedButton(text: "lbl_tedxevents".tr, margin: EdgeInsets.only(left: 39.h, right: 38.h), buttonStyle: CustomButtonStyles.outlinePrimaryTL201, buttonTextStyle: CustomTextStyles.headlineSmallOnPrimarySemiBold, onPressed: () {onTapTedxEventsButton(context);}); } 
/// Section Widget
Widget _buildUniversityButton(BuildContext context) { return CustomOutlinedButton(text: "lbl_university".tr, margin: EdgeInsets.symmetric(horizontal: 38.h), buttonStyle: CustomButtonStyles.outlinePrimaryTL201, buttonTextStyle: CustomTextStyles.headlineSmallOnPrimarySemiBold, onPressed: () {onTapUniversityButton(context);}); } 
/// Navigates to the homeListScreen when the action is triggered.
onTapImgOcticonThreeBarsSixteen(BuildContext context) { NavigatorService.pushNamed(AppRoutes.homeListScreen, ); } 
/// Navigates to the eventCategoriesStartupsScreen when the action is triggered.
onTapStartUpsButton(BuildContext context) { NavigatorService.pushNamed(AppRoutes.eventCategoriesStartupsScreen, ); } 
/// Navigates to the eventCategoriesTechnologyScreen when the action is triggered.
onTapTechnologyButton(BuildContext context) { NavigatorService.pushNamed(AppRoutes.eventCategoriesTechnologyScreen, ); } 
/// Navigates to the eventCategoriesTedxeventsScreen when the action is triggered.
onTapTedxEventsButton(BuildContext context) { NavigatorService.pushNamed(AppRoutes.eventCategoriesTedxeventsScreen, ); } 
/// Navigates to the eventCategoriesUniversityScreen when the action is triggered.
onTapUniversityButton(BuildContext context) { NavigatorService.pushNamed(AppRoutes.eventCategoriesUniversityScreen, ); } 
 }
