import 'bloc/setup_your_account_organization_two_bloc.dart';import 'models/setup_your_account_organization_two_model.dart';import 'package:flutter/material.dart';import 'package:kwstas_s_application2/core/app_export.dart';import 'package:kwstas_s_application2/widgets/custom_outlined_button.dart';import 'package:kwstas_s_application2/widgets/custom_text_form_field.dart';class SetupYourAccountOrganizationTwoScreen extends StatelessWidget {const SetupYourAccountOrganizationTwoScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<SetupYourAccountOrganizationTwoBloc>(create: (context) => SetupYourAccountOrganizationTwoBloc(SetupYourAccountOrganizationTwoState(setupYourAccountOrganizationTwoModelObj: SetupYourAccountOrganizationTwoModel()))..add(SetupYourAccountOrganizationTwoInitialEvent()), child: SetupYourAccountOrganizationTwoScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 38.h, vertical: 26.v), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgSettings, height: 68.v, width: 45.h), SizedBox(height: 33.v), Container(width: 329.h, margin: EdgeInsets.symmetric(horizontal: 12.h), child: Text("msg_some_more_steps".tr, maxLines: 3, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: theme.textTheme.displayMedium)), SizedBox(height: 63.v), SizedBox(height: 63.v, width: 341.h, child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgLetsIconsArro, height: 43.v, width: 46.h, alignment: Alignment.centerRight, margin: EdgeInsets.only(right: 14.h)), BlocSelector<SetupYourAccountOrganizationTwoBloc, SetupYourAccountOrganizationTwoState, TextEditingController?>(selector: (state) => state.notStudentController, builder: (context, notStudentController) {return CustomTextFormField(width: 341.h, controller: notStudentController, hintText: "msg_no_i_am_not_a_student".tr, hintStyle: theme.textTheme.titleLarge!, textInputAction: TextInputAction.done, alignment: Alignment.center, contentPadding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 16.v));})])), SizedBox(height: 13.v), SizedBox(height: 63.v, width: 341.h, child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgLetsIconsArro, height: 43.v, width: 46.h, alignment: Alignment.centerRight, margin: EdgeInsets.only(right: 14.h)), Align(alignment: Alignment.center, child: GestureDetector(onTap: () {onTapTwenty(context);}, child: Container(padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 13.v), decoration: AppDecoration.outlinePrimary.copyWith(borderRadius: BorderRadiusStyle.roundedBorder31), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 3.v), Text("msg_are_you_an_organization".tr, style: theme.textTheme.titleLarge)]))))])), _buildTwentyTwo(context), SizedBox(height: 9.v), CustomOutlinedButton(text: "lbl_finish".tr, margin: EdgeInsets.only(left: 8.h, right: 5.h), buttonStyle: CustomButtonStyles.outlinePrimaryTL312), SizedBox(height: 5.v)])))); } 
/// Section Widget
Widget _buildTwentyTwo(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 2.v), decoration: AppDecoration.outlinePrimary2.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 7.v), GestureDetector(onTap: () {onTapTxtYesIamanorganization(context);}, child: Text("msg_yes_i_am_an_organization".tr, style: theme.textTheme.headlineSmall)), SizedBox(height: 6.v), SizedBox(width: 222.h, child: Divider(color: theme.colorScheme.primary)), SizedBox(height: 7.v), GestureDetector(onTap: () {onTapTxtNoIAmNotAn(context);}, child: Text("msg_no_i_am_not_an2".tr, style: theme.textTheme.headlineSmall))])); } 
/// Navigates to the setupYourAccountStudentScreen when the action is triggered.
onTapTwenty(BuildContext context) { NavigatorService.pushNamed(AppRoutes.setupYourAccountStudentScreen, ); } 
/// Navigates to the setupYourAccountStudentNoScreen when the action is triggered.
onTapTxtYesIamanorganization(BuildContext context) { NavigatorService.pushNamed(AppRoutes.setupYourAccountStudentNoScreen, ); } 
/// Navigates to the setupYourAccountStudentNoTwoScreen when the action is triggered.
onTapTxtNoIAmNotAn(BuildContext context) { NavigatorService.pushNamed(AppRoutes.setupYourAccountStudentNoTwoScreen, ); } 
 }