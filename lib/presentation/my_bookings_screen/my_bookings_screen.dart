import 'bloc/my_bookings_bloc.dart';
import '../database';
import 'package:flutter/material.dart';
import 'package:kwstas_s_application2/core/app_export.dart';
import 'package:kwstas_s_application2/widgets/custom_elevated_button.dart';

class MyBookingsScreen extends StatelessWidget {
  const MyBookingsScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<MyBookingsBloc>(
      create: (context) => MyBookingsBloc()..add(MyBookingsInitialEvent()),
      child: MyBookingsScreen(),
    );
  }


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyBookingsBloc, MyBookingsState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 20.v),
                  _buildSettingsRow(context),
                  SizedBox(height: 7.v),
                  Text("msg_unleash_your_academic".tr, style: theme.textTheme.bodyLarge),
                  SizedBox(height: 17.v),
                  Text("lbl_my_bookings2".tr, style: theme.textTheme.displayLarge),
                  SizedBox(height: 18.v),
                  Container(
                    width: 296.h,
                    margin: EdgeInsets.symmetric(horizontal: 59.h),
                    child: Text(
                      "msg_here_are_the_events".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.titleLargeBlack900SemiBold,
                    ),
                  ),
                  SizedBox(height: 31.v),
                  Expanded(
                    child: ListView.builder(
                      itemCount: state.bookedEvents.length,
                      itemBuilder: (context, index) {
                        return _buildEventItem(context, state.bookedEvents[index]);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

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
              bottom: 16.v,), 
              onTap: () {onTapImgOcticonThreeBarsSixteen(context);}
          ),
        ],
      ),
    );
  }
onTapImgOcticonThreeBarsSixteen(BuildContext context) { NavigatorService.pushNamed(AppRoutes.homeListScreen, ); } 

  /// Section Widget
  Widget _buildEventItem(BuildContext context, Event event) {
    return Column(
      children: [
        SizedBox(
          height: 260.v,
          width: 315.h,
          child: CustomImageView(
            imagePath: event.imagePath,
            height: 260.v,
            width: 315.h,
            radius: BorderRadius.vertical(top: Radius.circular(30.h)),
          ),
        ),
        SizedBox(height: 10.v),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(event.name, style: CustomTextStyles.titleLargeBlack900Bold),
              SizedBox(height: 5.v),
              Text(event.location, style: theme.textTheme.titleSmall),
              SizedBox(height: 5.v),
              Text(event.date, style: CustomTextStyles.bodySmall12),
              SizedBox(height: 10.v),
              CustomElevatedButton(
                height: 35.v,
                width: 148.h,
                text: "Booked", // You can change this as needed
              ),
            ],
          ),
        ),
        SizedBox(height: 20.v),
      ],
    );
  }
}
