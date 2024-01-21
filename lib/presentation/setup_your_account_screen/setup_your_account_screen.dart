import 'bloc/setup_your_account_bloc.dart';import 'models/setup_your_account_model.dart';import 'package:flutter/material.dart';import 'package:kwstas_s_application2/core/app_export.dart';import 'package:kwstas_s_application2/widgets/custom_outlined_button.dart';class SetupYourAccountScreen extends StatelessWidget {const SetupYourAccountScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<SetupYourAccountBloc>(create: (context) => SetupYourAccountBloc(SetupYourAccountState(setupYourAccountModelObj: SetupYourAccountModel()))..add(SetupYourAccountInitialEvent()), child: SetupYourAccountScreen()); } 
@override Widget build(BuildContext context) { return BlocBuilder<SetupYourAccountBloc, SetupYourAccountState>(builder: (context, state) {return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 44.h, vertical: 26.v), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgSettings, height: 68.v, width: 45.h), SizedBox(height: 33.v), Container(width: 329.h, margin: EdgeInsets.symmetric(horizontal: 6.h), child: Text("msg_some_more_steps".tr, maxLines: 3, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: theme.textTheme.displayMedium)), SizedBox(height: 46.v), SizedBox(height: 63.v, width: 341.h, child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgLetsIconsArro, height: 43.v, width: 46.h, alignment: Alignment.centerRight, margin: EdgeInsets.only(right: 14.h)), CustomOutlinedButton(width: 341.h, text: "msg_are_you_a_student".tr, buttonStyle: CustomButtonStyles.outlinePrimaryTL311, buttonTextStyle: theme.textTheme.titleLarge!, onPressed: () {onTapAreYouAStudent(context);}, alignment: Alignment.center)])), SizedBox(height: 10.v), SizedBox(height: 63.v, width: 341.h, child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgLetsIconsArro, height: 43.v, width: 46.h, alignment: Alignment.centerRight, margin: EdgeInsets.only(right: 14.h)), Align(alignment: Alignment.center, child: GestureDetector(onTap: () {onTapSixteen(context);}, child: Container(padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 13.v), decoration: AppDecoration.outlinePrimary.copyWith(borderRadius: BorderRadiusStyle.roundedBorder31), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 3.v), Text("msg_are_you_an_organization".tr, style: theme.textTheme.titleLarge)]))))])), SizedBox(height: 10.v), Container(width: 341.h, padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 14.v), decoration: AppDecoration.outlinePrimary.copyWith(borderRadius: BorderRadiusStyle.roundedBorder31), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [TextField(decoration: InputDecoration(
                      labelText: "What do you like?",
                      border: OutlineInputBorder()))])), SizedBox(height: 28.v), CustomOutlinedButton(text: "lbl_finish".tr, buttonStyle: CustomButtonStyles.outlinePrimaryTL312), SizedBox(height: 5.v)]))));}); } 
/// Navigates to the setupYourAccountStudentScreen when the action is triggered.
onTapAreYouAStudent(BuildContext context) { NavigatorService.pushNamed(AppRoutes.setupYourAccountStudentScreen, ); } 
/// Navigates to the setupYourAccountOrganizationScreen when the action is triggered.
onTapSixteen(BuildContext context) { NavigatorService.pushNamed(AppRoutes.setupYourAccountOrganizationScreen, ); } 
onTapInterest(BuildContext context) { NavigatorService.pushNamed(AppRoutes.setupYourAccountStudentScreen, ); } 

 }