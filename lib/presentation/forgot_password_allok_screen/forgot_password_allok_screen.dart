import 'bloc/forgot_password_allok_bloc.dart';import 'models/forgot_password_allok_model.dart';import 'package:flutter/material.dart';import 'package:kwstas_s_application2/core/app_export.dart';class ForgotPasswordAllokScreen extends StatelessWidget {const ForgotPasswordAllokScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<ForgotPasswordAllokBloc>(create: (context) => ForgotPasswordAllokBloc(ForgotPasswordAllokState(forgotPasswordAllokModelObj: ForgotPasswordAllokModel()))..add(ForgotPasswordAllokInitialEvent()), child: ForgotPasswordAllokScreen()); } 
@override Widget build(BuildContext context) { return BlocBuilder<ForgotPasswordAllokBloc, ForgotPasswordAllokState>(builder: (context, state) {return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 18.v), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 9.h), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgEvaArrowBackOutlineBlack900, height: 39.v, width: 36.h, margin: EdgeInsets.only(bottom: 99.v), onTap: () {onTapImgEvaArrowBackOutline(context);}), CustomImageView(imagePath: ImageConstant.imgGroupPrimary, height: 102.v, width: 64.h, margin: EdgeInsets.only(left: 135.h, top: 36.v))]))), SizedBox(height: 50.v), Container(width: 335.h, margin: EdgeInsets.only(left: 41.h, right: 52.h), child: Text("msg_we_sent_you_an_email".tr, maxLines: 5, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.headlineSmallInterBlack900)), SizedBox(height: 14.v), Flexible(child : CustomImageView( imagePath: ImageConstant.imgHappyIllustration, height: 254.v, width: 423.h))]))));}); } 
/// Navigates to the loginScreen when the action is triggered.
onTapImgEvaArrowBackOutline(BuildContext context) { NavigatorService.pushNamed(AppRoutes.loginScreen, ); } 
 }
