import '../../widgets/custom_elevated_button.dart';
import '../database';
import 'bloc/favorites_bloc.dart';
import 'models/favorites_model.dart';
import 'package:flutter/material.dart';
import 'package:kwstas_s_application2/core/app_export.dart';


class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<FavoritesBloc>(
      create: (context) => FavoritesBloc()..add(FavoritesInitialEvent()),
      child: FavoritesScreen(),
    );
  }


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoritesBloc, FavoritesState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: SizeUtils.width,
              child: SingleChildScrollView(
                padding: EdgeInsets.only(top: 7.v),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 37.h,
                    right: 37.h,
                    bottom: 5.v,
                  ),
                  child: Column(
                    children: [
                      // Settings Row
                      _buildSettingsRow(context),
                      SizedBox(height: 7.v),
                      Text(
                        "msg_unleash_your_academic".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                      SizedBox(height: 15.v),
                      Text(
                        "lbl_my_favorites2".tr,
                        style: theme.textTheme.displayLarge,
                      ),
                      SizedBox(height: 15.v),

                      // Favorite Events List
                      state.favoriteEvents.isEmpty
                          ? Text('No favorite events found.')
                          : ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: state.favoriteEvents.length,
                        itemBuilder: (context, index) {
                          return _buildFavoriteEventItem(context, state.favoriteEvents[index]);
                        },
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
          SizedBox(
            height: 68.v,
            width: 45.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgSettings,
                  height: 68.v,
                  width: 45.h,
                  alignment: Alignment.center,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgSettings,
                  height: 68.v,
                  width: 45.h,
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
          Container(
            height: 48.v,
            width: 204.h,
            margin: EdgeInsets.only(
              left: 18.h,
              top: 8.v,
              bottom: 12.v,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "lbl_univentures".tr,
                    style: theme.textTheme.headlineLarge,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "lbl_univentures".tr,
                    style: theme.textTheme.headlineLarge,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            height: 35.v,
            width: 30.h,
            margin: EdgeInsets.only(
              top: 17.v,
              right: 6.h,
              bottom: 17.v,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgOcticonThreeBars16,
                  height: 35.v,
                  width: 30.h,
                  alignment: Alignment.center,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgOcticonThreeBars16,
                  height: 35.v,
                  width: 30.h,
                  alignment: Alignment.center,onTap: () {onTapImgOcticonThreeBarsSixteen(context);}
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
onTapImgOcticonThreeBarsSixteen(BuildContext context) { NavigatorService.pushNamed(AppRoutes.homeListScreen, ); }


Widget _buildFavoriteEventItem(BuildContext context, Event event) {
  return GestureDetector(onTap: () {
    if(event.id == 'thinkbiz'){
      NavigatorService.pushNamed(AppRoutes.thinkBizScreen);}
    if(event.id == 'planbiz'){
      NavigatorService.pushNamed(AppRoutes.planBizScreen);}
    if(event.id == 'techconnect'){
      NavigatorService.pushNamed(AppRoutes.techconnectScreen);}
    if(event.id == 'openconference'){
      NavigatorService.pushNamed(AppRoutes.openConferenceScreen);}
    if(event.id == 'partyatntua'){
      NavigatorService.pushNamed(AppRoutes.partyAtNtuaScreen);}
    if(event.id == 'pangea'){
      NavigatorService.pushNamed(AppRoutes.tedxauebPangeaMainEventScreen);}
  },child:
  Column(
    children: [
      // Event Image
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

      // Event Details
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
              text: "Favorite", // Or any other text you'd like
            ),
          ],
        ),
      ),
      SizedBox(height: 20.v),
    ],
  ));
}

