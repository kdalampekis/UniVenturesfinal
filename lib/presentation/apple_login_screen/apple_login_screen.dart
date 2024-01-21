import 'bloc/apple_login_bloc.dart';import 'models/apple_login_model.dart';import 'package:flutter/material.dart';import 'package:kwstas_s_application2/core/app_export.dart';import 'package:kwstas_s_application2/core/utils/validation_functions.dart';import 'package:kwstas_s_application2/widgets/custom_elevated_button.dart';import 'package:kwstas_s_application2/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class AppleLoginScreen extends StatelessWidget {AppleLoginScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

static Widget builder(BuildContext context) { return BlocProvider<AppleLoginBloc>(create: (context) => AppleLoginBloc(AppleLoginState(appleLoginModelObj: AppleLoginModel()))..add(AppleLoginInitialEvent()), child: AppleLoginScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Form(key: _formKey, child: SizedBox(width: double.maxFinite, child: SingleChildScrollView(child: SizedBox(height: 884.v, width: double.maxFinite, child: Stack(alignment: Alignment.topCenter, children: [CustomImageView(imagePath: ImageConstant.imgPhKeyFill, height: 25.adaptSize, width: 25.adaptSize, alignment: Alignment.bottomRight, margin: EdgeInsets.only(right: 69.h, bottom: 182.v)), Align(alignment: Alignment.topCenter, child: Container(width: 307.h, margin: EdgeInsets.only(top: 62.v), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_log_in_to_uni".tr, style: theme.textTheme.displayMedium), TextSpan(text: "lbl_ventures".tr, style: CustomTextStyles.displayMediumPrimary_1)]), textAlign: TextAlign.center))), Align(alignment: Alignment.bottomCenter, child: Container(height: 63.v, width: 341.h, margin: EdgeInsets.only(bottom: 369.v), decoration: BoxDecoration(color: appTheme.blueGray100.withOpacity(0.53), borderRadius: BorderRadius.circular(31.h), border: Border.all(color: theme.colorScheme.primary, width: 1.h)))), Align(alignment: Alignment.bottomLeft, child: Container(margin: EdgeInsets.only(left: 4.h, bottom: 274.v), padding: EdgeInsets.symmetric(horizontal: 44.h, vertical: 11.v), decoration: AppDecoration.outlinePrimary.copyWith(borderRadius: BorderRadiusStyle.roundedBorder31), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 2.v), Text("lbl_password".tr, style: theme.textTheme.headlineSmall)]))), Align(alignment: Alignment.topLeft, child: Padding(padding: EdgeInsets.only(left: 154.h, top: 348.v), child: Text("lbl_email".tr, style: theme.textTheme.headlineSmall))), Align(alignment: Alignment.bottomRight, child: Container(margin: EdgeInsets.only(left: 107.h, top: 492.v, bottom: 329.v), padding: EdgeInsets.symmetric(horizontal: 70.h, vertical: 10.v), decoration: AppDecoration.outlinePrimary1.copyWith(borderRadius: BorderRadiusStyle.roundedBorder31), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgArrowLeftOnprimary, height: 36.v, width: 34.h, margin: EdgeInsets.only(top: 1.v, bottom: 2.v)), Padding(padding: EdgeInsets.only(left: 22.h, top: 4.v), child: Text("lbl_log_in".tr, style: CustomTextStyles.headlineSmallOnPrimary))]))), Align(alignment: Alignment.bottomRight, child: Padding(padding: EdgeInsets.only(bottom: 236.v), child: Text("msg_don_t_have_an_account".tr, style: CustomTextStyles.titleLargeBlack900Light))), Align(alignment: Alignment.bottomRight, child: Padding(padding: EdgeInsets.only(right: 53.h, bottom: 191.v), child: Text("msg_other_log_in_options".tr, style: CustomTextStyles.titleLargeInterBlack900))), CustomImageView(imagePath: ImageConstant.imgSocialMediaIcons, height: 52.v, width: 234.h, alignment: Alignment.bottomRight, margin: EdgeInsets.only(right: 36.h, bottom: 120.v)), CustomImageView(imagePath: ImageConstant.imgLoginIllustration, height: 194.v, width: 170.h, alignment: Alignment.topCenter, margin: EdgeInsets.only(top: 210.v)), CustomImageView(imagePath: ImageConstant.imgEvaArrowBackOutlineBlack900, height: 39.v, width: 36.h, alignment: Alignment.topLeft, margin: EdgeInsets.only(left: 9.h, top: 18.v)), CustomImageView(imagePath: ImageConstant.imgVector461x430, height: 461.v, width: 430.h, alignment: Alignment.topCenter), Align(alignment: Alignment.bottomCenter, child: Padding(padding: EdgeInsets.only(left: 98.h, right: 98.h, bottom: 9.v), child: Column(mainAxisSize: MainAxisSize.min, children: [Text("msg_or_register_with".tr, style: CustomTextStyles.titleLargeInterBlack900), SizedBox(height: 19.v), CustomImageView(imagePath: ImageConstant.imgSocialMediaIcons, height: 52.v, width: 234.h)]))), Align(alignment: Alignment.bottomCenter, child: Padding(padding: EdgeInsets.only(bottom: 111.v), child: Text("msg_already_have_an".tr, style: CustomTextStyles.titleLargeBlack900Light))), Align(alignment: Alignment.bottomCenter, child: Container(width: 328.h, margin: EdgeInsets.only(bottom: 142.v), child: Text("msg_i_apabide_by_univentures".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.titleLargeBlack900Light))), CustomImageView(imagePath: ImageConstant.imgSystemUiconsCheckboxEmpty, height: 30.adaptSize, width: 30.adaptSize, alignment: Alignment.bottomLeft, margin: EdgeInsets.only(left: 26.h, bottom: 175.v)), _buildPassword(context)]))))))); } 
/// Section Widget
Widget _buildPassword(BuildContext context) { return Align(alignment: Alignment.bottomCenter, child: Container(padding: EdgeInsets.symmetric(vertical: 14.v), decoration: AppDecoration.fillGray, child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.only(left: 12.h, right: 18.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 2.v), child: Text("lbl_apple_id".tr, textAlign: TextAlign.center, style: CustomTextStyles.titleLargeBlack900SemiBold)), GestureDetector(onTap: () {onTapTxtCancel(context);}, child: Padding(padding: EdgeInsets.only(bottom: 2.v), child: Text("lbl_cancel".tr, style: CustomTextStyles.titleLargeBlue700)))]))), SizedBox(height: 10.v), Divider(color: appTheme.gray600), SizedBox(height: 13.v), Container(height: 47.v, width: 52.h, margin: EdgeInsets.only(left: 182.h), child: Stack(alignment: Alignment.topLeft, children: [CustomImageView(imagePath: ImageConstant.imgClose, height: 47.v, width: 52.h, alignment: Alignment.center), CustomImageView(imagePath: ImageConstant.imgLogo2, height: 37.v, width: 49.h, alignment: Alignment.topLeft, margin: EdgeInsets.only(top: 4.v))])), SizedBox(height: 9.v), Container(width: 373.h, margin: EdgeInsets.only(left: 20.h, right: 36.h), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_type_your_password2".tr, style: CustomTextStyles.titleMediumInterBlack900), TextSpan(text: "msg_in_univentures_using".tr, style: CustomTextStyles.titleMediumInterBlack900), TextSpan(text: "lbl".tr, style: CustomTextStyles.titleMediumInterBlack900)]), textAlign: TextAlign.center)), SizedBox(height: 37.v), BlocBuilder<AppleLoginBloc, AppleLoginState>(builder: (context, state) {return CustomTextFormField(width: 267.h, controller: state.passwordController, hintText: "lbl_password".tr, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, alignment: Alignment.center, suffix: InkWell(onTap: () {context.read<AppleLoginBloc>().add(ChangePasswordVisibilityEvent(value: !state.isShowPassword));}, child: Container(margin: EdgeInsets.fromLTRB(30.h, 7.v, 6.h, 6.v), child: CustomImageView(imagePath: ImageConstant.imgPhKeyFill, height: 25.adaptSize, width: 25.adaptSize))), suffixConstraints: BoxConstraints(maxHeight: 39.v), validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: state.isShowPassword, contentPadding: EdgeInsets.only(left: 11.h, top: 7.v, bottom: 7.v), borderDecoration: TextFormFieldStyleHelper.fillGray, fillColor: appTheme.gray500);}), SizedBox(height: 44.v), Divider(color: appTheme.gray600), SizedBox(height: 48.v), CustomElevatedButton(width: 114.h, text: "lbl_continue".tr, margin: EdgeInsets.only(left: 150.h), buttonStyle: CustomButtonStyles.fillBlue, buttonTextStyle: CustomTextStyles.titleLargeOnPrimary, onPressed: () {onTapContinue(context);}), SizedBox(height: 44.v)]))); } 
/// Navigates to the loginScreen when the action is triggered.
onTapTxtCancel(BuildContext context) { NavigatorService.pushNamed(AppRoutes.loginScreen, ); } 
/// Navigates to the homeScreen when the action is triggered.
onTapContinue(BuildContext context) { NavigatorService.pushNamed(AppRoutes.homeScreen, ); } 
 }
