import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:kwstas_s_application2/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: 375.h,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "LogIn/SignUp".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.loginSignupScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Gmail-email-login".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.gmailEmailLoginScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Gmail-password-login".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.gmailPasswordLoginScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Gmail-visiblepassword-login".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.gmailVisiblepasswordLoginScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "facebook-login".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.facebookLoginScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "facebook-visiblepassword-login".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.facebookVisiblepasswordLoginScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Apple-LogIn".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.appleLoginScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Loading".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.loadingScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "LogIn".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.loginScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "LogIn-visiblepassword".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.loginVisiblepasswordScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "LogIn-error".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.loginErrorScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Forgot Password".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.forgotPasswordScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Forgot Password-wrongemail".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.forgotPasswordWrongemailScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Forgot Password-allok".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.forgotPasswordAllokScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "SignUp".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.signupScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "SignUp-checked".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.signupCheckedScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "SignUp-uncheckerror".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.signupUncheckerrorScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "SetUp your account".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.setupYourAccountScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "SetUp your account-student".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.setupYourAccountStudentScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "SetUp your account-student yes".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.setupYourAccountStudentYesScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "SetUp your account-student no".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.setupYourAccountStudentNoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Successfully signed up".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.successfullySignedUpScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Successfully signed up / org".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.successfullySignedUpOrgScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Gmail-email-signup".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.gmailEmailSignupScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Gmail-password-signup".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.gmailPasswordSignupScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Gmail-visiblepassword-signup".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.gmailVisiblepasswordSignupScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "facebook-signup".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.facebookSignupScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "facebook-visiblepassword-signup".tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .facebookVisiblepasswordSignupScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "SetUp your account-organization".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.setupYourAccountOrganizationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "SetUp your account-organization Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .setupYourAccountOrganizationTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "SetUp your accountTwo".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.setupYourAccounttwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "SetUp your account-student no Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.setupYourAccountStudentNoTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "SetUp your account-organization Three".tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .setupYourAccountOrganizationThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "SetUp your account-student Four".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.setupYourAccountStudentFourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.homeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home-list".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.homeListScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "search an event".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.searchAnEventScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "search an event - GPS".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.searchAnEventGpsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "search an event - gps/map".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.searchAnEventGpsMapScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "search an event - gps/map One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.searchAnEventGpsMapOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "search an event-time".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.searchAnEventTimeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Events".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.eventsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Popular events".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.popularEventsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Popular events-red heart".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.popularEventsRedHeartScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Event Categories".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.eventCategoriesScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Event Categories-Startups".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.eventCategoriesStartupsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Event Categories-Technology".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.eventCategoriesTechnologyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Event Categories-TEDxEvents".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.eventCategoriesTedxeventsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Event Categories-University".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.eventCategoriesUniversityScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "sth went wrong".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.sthWentWrongScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Favorites".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.favoritesScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Volunteer".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.volunteerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "About Us".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.aboutUsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.profileScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Camera One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.cameraOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Camera".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.cameraScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Think Biz".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.thinkBizScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "TechConnect".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.techconnectScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "TEDxAUEB Pangea Main Event".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.tedxauebPangeaMainEventScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Party at NTUA".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.partyAtNtuaScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Open Conference".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.openConferenceScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Plan Biz".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.planBizScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "My Bookings".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.myBookingsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "My Progress".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.myProgressScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile - change name".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileChangeNameScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Book now-link".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.bookNowLinkScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Reset Password".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.resetPasswordScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "LogIn-newcredentials".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.loginNewcredentialsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "My events / org".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.myEventsOrgScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Think Biz / org".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.thinkBizOrgScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Think Biz - profile / org".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.thinkBizProfileOrgScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Think Biz / upload an event - org".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.thinkBizUploadAnEventOrgScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home-list / org".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.homeListOrgScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home / org".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.homeOrgScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "team-illustration-3 One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.teamIllustration3OneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "About Us / org".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.aboutUsOrgScreen),
                            ),
                          ],
                        ),
                      ),
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
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
