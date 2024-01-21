import 'bloc/techconnect_bloc.dart';import 'models/techconnect_model.dart';import 'package:flutter/material.dart';import 'package:kwstas_s_application2/core/app_export.dart';import 'package:kwstas_s_application2/widgets/custom_text_form_field.dart';class TechconnectScreen extends StatelessWidget {const TechconnectScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<TechconnectBloc>(create: (context) => TechconnectBloc(TechconnectState(techconnectModelObj: TechconnectModel()))..add(TechconnectInitialEvent()), child: TechconnectScreen()); } 
@override Widget build(BuildContext context) {return BlocBuilder<TechconnectBloc, TechconnectState>(builder: (context, state) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 20.v), Expanded(child: SingleChildScrollView(child: Padding(padding: EdgeInsets.only(left: 7.h, right: 7.h, bottom: 11.v), child: Column(children: [_buildSettingsRow(context), SizedBox(height: 7.v), Text("msg_unleash_your_academic".tr, style: theme.textTheme.bodyLarge), SizedBox(height: 61.v), _buildTechnologyRow(context), SizedBox(height: 47.v), CustomImageView(imagePath: ImageConstant.imgTechconnect1308x320, height: 308.v, width: 320.h), SizedBox(height: 38.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 62.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgMdiLocationRadiusOutline, height: 45.v, width: 43.h), Expanded(child:Padding(padding: EdgeInsets.only(left: 7.h, top: 9.v), child: Text("msg_keramikos_athens".tr, style: CustomTextStyles.headlineSmallBlack900)))]))), SizedBox(height: 19.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 62.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgMingcuteTimeLine, height: 42.v, width: 43.h), Padding(padding: EdgeInsets.only(left: 7.h, top: 6.v), child: Text("lbl_02_may_2023".tr, style: CustomTextStyles.headlineSmallBlack900))]))), SizedBox(height: 19.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 62.h), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgRiMoneyDollarCircleLine, height: 43.v, width: 45.h), Padding(padding: EdgeInsets.only(left: 9.h, bottom: 5.v), child: Text("lbl_20".tr, style: CustomTextStyles.headlineSmallBlack900))]))),GestureDetector(
    onTap: () {print("or"); NavigatorService.pushNamed(AppRoutes.bookNowLinkScreen, ); context.read<TechconnectBloc>().add(BookEvent(eventId: "techconnect"));},
 child: Padding(
  padding: EdgeInsets.all(8.0), // Increase tappable area
  child: Container(
   padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0), // Adjust for better tap area
   color: Colors.transparent, // Set a background color if needed
   child: Text(state.isBooked ? "Booked" : "Book Now"),
  ),
 )
), SizedBox(height: 16.v), GestureDetector(onTap: () {onTapFourteen(context);}, child: SizedBox(height: 48.v, width: 255.h, child: Stack(alignment: Alignment.center))), SizedBox(height: 17.v), Container(width: 380.h, margin: EdgeInsets.only(left: 18.h, right: 17.h), child: Text("msg_techconnect_is_a".tr, maxLines: 5, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.titleLargeBlack900Light))]))))])))); });}
/// Section Widget
Widget _buildSettingsRow(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 14.v), decoration: AppDecoration.outlinePrimary.copyWith(borderRadius: BorderRadiusStyle.circleBorder50), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgSettings, height: 68.v, width: 45.h), Padding(padding: EdgeInsets.only(left: 18.h, top: 8.v, bottom: 12.v), child: Text("lbl_univentures".tr, style: theme.textTheme.headlineLarge)), Spacer(), CustomImageView(imagePath: ImageConstant.imgOcticonThreeBars16, height: 35.v, width: 30.h, margin: EdgeInsets.only(top: 17.v, right: 6.h, bottom: 16.v), onTap: () {onTapImgOcticonThreeBarsSixteen(context);})])); } 
/// Section Widget
Widget _buildTechnologyRow(BuildContext context) {return BlocBuilder<TechconnectBloc, TechconnectState>(builder: (context, state){ return Padding(padding: EdgeInsets.only(left: 34.h, right: 14.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.end, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_technology".tr, style: CustomTextStyles.titleLargeBlack900), Text("lbl_techconnect".tr, style: CustomTextStyles.headlineLargeSemiBold)]), CustomImageView(imagePath: ImageConstant.imgIconamoonStarFill, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(left: 23.h, top: 35.v, bottom: 12.v)), Padding(padding: EdgeInsets.only(left: 5.h, top: 31.v, bottom: 4.v), child: Text("lbl_5_0".tr, style: CustomTextStyles.headlineSmallBlack900)),Spacer(flex: 62), GestureDetector(
 onTap: () {print('ok');context.read<TechconnectBloc>().add(FavoriteEvent(eventId: "techconnect"));},
 child: Padding(
  padding: EdgeInsets.all(20.0), // Increase tappable area
  child: Icon(
   state.isFavorited ? Icons.favorite : Icons.favorite_border,
   size: 30.0, // Adjust size if needed
  ),
 ),
),
])); }); }
/// Navigates to the bookNowLinkScreen when the action is triggered.
onTapFourteen(BuildContext context) { NavigatorService.pushNamed(AppRoutes.bookNowLinkScreen, ); } 
onTapImgOcticonThreeBarsSixteen(BuildContext context) { NavigatorService.pushNamed(AppRoutes.homeListScreen, ); }
 }
