
import 'package:flutter/material.dart';
import 'package:kwstas_s_application2/presentation/login_signup_screen/login_signup_screen.dart';
import 'package:kwstas_s_application2/presentation/gmail_email_login_screen/gmail_email_login_screen.dart';
import 'package:kwstas_s_application2/presentation/gmail_password_login_screen/gmail_password_login_screen.dart';
import 'package:kwstas_s_application2/presentation/gmail_visiblepassword_login_screen/gmail_visiblepassword_login_screen.dart';
import 'package:kwstas_s_application2/presentation/facebook_login_screen/facebook_login_screen.dart';
import 'package:kwstas_s_application2/presentation/facebook_visiblepassword_login_screen/facebook_visiblepassword_login_screen.dart';
import 'package:kwstas_s_application2/presentation/apple_login_screen/apple_login_screen.dart';
import 'package:kwstas_s_application2/presentation/loading_screen/loading_screen.dart';
import 'package:kwstas_s_application2/presentation/login_screen/login_screen.dart';
import 'package:kwstas_s_application2/presentation/login_visiblepassword_screen/login_visiblepassword_screen.dart';
import 'package:kwstas_s_application2/presentation/login_error_screen/login_error_screen.dart';
import 'package:kwstas_s_application2/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:kwstas_s_application2/presentation/forgot_password_wrongemail_screen/forgot_password_wrongemail_screen.dart';
import 'package:kwstas_s_application2/presentation/forgot_password_allok_screen/forgot_password_allok_screen.dart';
import 'package:kwstas_s_application2/presentation/signup_screen/signup_screen.dart';
import 'package:kwstas_s_application2/presentation/signup_checked_screen/signup_checked_screen.dart';
import 'package:kwstas_s_application2/presentation/signup_uncheckerror_screen/signup_uncheckerror_screen.dart';
import 'package:kwstas_s_application2/presentation/setup_your_account_screen/setup_your_account_screen.dart';
import 'package:kwstas_s_application2/presentation/setup_your_account_student_screen/setup_your_account_student_screen.dart';
import 'package:kwstas_s_application2/presentation/setup_your_account_student_yes_screen/setup_your_account_student_yes_screen.dart';
import 'package:kwstas_s_application2/presentation/setup_your_account_student_no_screen/setup_your_account_student_no_screen.dart';
import 'package:kwstas_s_application2/presentation/successfully_signed_up_screen/successfully_signed_up_screen.dart';
import 'package:kwstas_s_application2/presentation/successfully_signed_up_org_screen/successfully_signed_up_org_screen.dart';
import 'package:kwstas_s_application2/presentation/gmail_email_signup_screen/gmail_email_signup_screen.dart';
import 'package:kwstas_s_application2/presentation/gmail_password_signup_screen/gmail_password_signup_screen.dart';
import 'package:kwstas_s_application2/presentation/gmail_visiblepassword_signup_screen/gmail_visiblepassword_signup_screen.dart';
import 'package:kwstas_s_application2/presentation/facebook_signup_screen/facebook_signup_screen.dart';
import 'package:kwstas_s_application2/presentation/facebook_visiblepassword_signup_screen/facebook_visiblepassword_signup_screen.dart';
import 'package:kwstas_s_application2/presentation/setup_your_account_organization_screen/setup_your_account_organization_screen.dart';
import 'package:kwstas_s_application2/presentation/setup_your_account_organization_two_screen/setup_your_account_organization_two_screen.dart';
import 'package:kwstas_s_application2/presentation/setup_your_accounttwo_screen/setup_your_accounttwo_screen.dart';
import 'package:kwstas_s_application2/presentation/setup_your_account_student_no_two_screen/setup_your_account_student_no_two_screen.dart';
import 'package:kwstas_s_application2/presentation/setup_your_account_organization_three_screen/setup_your_account_organization_three_screen.dart';
import 'package:kwstas_s_application2/presentation/setup_your_account_student_four_screen/setup_your_account_student_four_screen.dart';
import 'package:kwstas_s_application2/presentation/home_screen/home_screen.dart';
import 'package:kwstas_s_application2/presentation/home_list_screen/home_list_screen.dart';
import 'package:kwstas_s_application2/presentation/search_an_event_screen/search_an_event_screen.dart';
import 'package:kwstas_s_application2/presentation/search_an_event_gps_screen/search_an_event_gps_screen.dart';
import 'package:kwstas_s_application2/presentation/search_an_event_gps_map_screen/search_an_event_gps_map_screen.dart';
import 'package:kwstas_s_application2/presentation/search_an_event_gps_map_one_screen/search_an_event_gps_map_one_screen.dart';
import 'package:kwstas_s_application2/presentation/search_an_event_time_screen/search_an_event_time_screen.dart';
import 'package:kwstas_s_application2/presentation/events_screen/events_screen.dart';
import 'package:kwstas_s_application2/presentation/popular_events_screen/popular_events_screen.dart';
import 'package:kwstas_s_application2/presentation/popular_events_red_heart_screen/popular_events_red_heart_screen.dart';
import 'package:kwstas_s_application2/presentation/event_categories_screen/event_categories_screen.dart';
import 'package:kwstas_s_application2/presentation/event_categories_startups_screen/event_categories_startups_screen.dart';
import 'package:kwstas_s_application2/presentation/event_categories_technology_screen/event_categories_technology_screen.dart';
import 'package:kwstas_s_application2/presentation/event_categories_tedxevents_screen/event_categories_tedxevents_screen.dart';
import 'package:kwstas_s_application2/presentation/event_categories_university_screen/event_categories_university_screen.dart';
import 'package:kwstas_s_application2/presentation/sth_went_wrong_screen/sth_went_wrong_screen.dart';
import 'package:kwstas_s_application2/presentation/favorites_screen/favorites_screen.dart';
import 'package:kwstas_s_application2/presentation/volunteer_screen/volunteer_screen.dart';
import 'package:kwstas_s_application2/presentation/about_us_screen/about_us_screen.dart';
import 'package:kwstas_s_application2/presentation/profile_screen/profile_screen.dart';
import 'package:kwstas_s_application2/presentation/camera_one_screen/camera_one_screen.dart';
import 'package:kwstas_s_application2/presentation/camera_screen/camera_screen.dart';
import 'package:kwstas_s_application2/presentation/think_biz_screen/think_biz_screen.dart';
import 'package:kwstas_s_application2/presentation/techconnect_screen/techconnect_screen.dart';
import 'package:kwstas_s_application2/presentation/tedxaueb_pangea_main_event_screen/tedxaueb_pangea_main_event_screen.dart';
import 'package:kwstas_s_application2/presentation/party_at_ntua_screen/party_at_ntua_screen.dart';
import 'package:kwstas_s_application2/presentation/open_conference_screen/open_conference_screen.dart';
import 'package:kwstas_s_application2/presentation/plan_biz_screen/plan_biz_screen.dart';
import 'package:kwstas_s_application2/presentation/my_bookings_screen/my_bookings_screen.dart';
import 'package:kwstas_s_application2/presentation/my_progress_screen/my_progress_screen.dart';
import 'package:kwstas_s_application2/presentation/profile_change_name_screen/profile_change_name_screen.dart';
import 'package:kwstas_s_application2/presentation/book_now_link_screen/book_now_link_screen.dart';
import 'package:kwstas_s_application2/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:kwstas_s_application2/presentation/login_newcredentials_screen/login_newcredentials_screen.dart';
import 'package:kwstas_s_application2/presentation/my_events_org_screen/my_events_org_screen.dart';
import 'package:kwstas_s_application2/presentation/think_biz_org_screen/think_biz_org_screen.dart';
import 'package:kwstas_s_application2/presentation/think_biz_profile_org_screen/think_biz_profile_org_screen.dart';
import 'package:kwstas_s_application2/presentation/think_biz_upload_an_event_org_screen/think_biz_upload_an_event_org_screen.dart';
import 'package:kwstas_s_application2/presentation/home_list_org_screen/home_list_org_screen.dart';
import 'package:kwstas_s_application2/presentation/home_org_screen/home_org_screen.dart';
import 'package:kwstas_s_application2/presentation/team_illustration_3_one_screen/team_illustration_3_one_screen.dart';
import 'package:kwstas_s_application2/presentation/about_us_org_screen/about_us_org_screen.dart';
import 'package:kwstas_s_application2/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String loginSignupScreen = '/login_signup_screen';

  static const String gmailEmailLoginScreen = '/gmail_email_login_screen';

  static const String gmailPasswordLoginScreen = '/gmail_password_login_screen';

  static const String gmailVisiblepasswordLoginScreen =
      '/gmail_visiblepassword_login_screen';

  static const String facebookLoginScreen = '/facebook_login_screen';

  static const String facebookVisiblepasswordLoginScreen =
      '/facebook_visiblepassword_login_screen';

  static const String appleLoginScreen = '/apple_login_screen';

  static const String loadingScreen = '/loading_screen';

  static const String loginScreen = '/login_screen';

  static const String loginVisiblepasswordScreen =
      '/login_visiblepassword_screen';

  static const String loginErrorScreen = '/login_error_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String forgotPasswordWrongemailScreen =
      '/forgot_password_wrongemail_screen';

  static const String forgotPasswordAllokScreen =
      '/forgot_password_allok_screen';

  static const String signupScreen = '/signup_screen';

  static const String signupCheckedScreen = '/signup_checked_screen';

  static const String signupUncheckerrorScreen = '/signup_uncheckerror_screen';

  static const String setupYourAccountScreen = '/setup_your_account_screen';

  static const String setupYourAccountStudentScreen =
      '/setup_your_account_student_screen';

  static const String setupYourAccountStudentYesScreen =
      '/setup_your_account_student_yes_screen';

  static const String setupYourAccountStudentNoScreen =
      '/setup_your_account_student_no_screen';

  static const String successfullySignedUpScreen =
      '/successfully_signed_up_screen';

  static const String successfullySignedUpOrgScreen =
      '/successfully_signed_up_org_screen';

  static const String gmailEmailSignupScreen = '/gmail_email_signup_screen';

  static const String gmailPasswordSignupScreen =
      '/gmail_password_signup_screen';

  static const String gmailVisiblepasswordSignupScreen =
      '/gmail_visiblepassword_signup_screen';

  static const String facebookSignupScreen = '/facebook_signup_screen';

  static const String facebookVisiblepasswordSignupScreen =
      '/facebook_visiblepassword_signup_screen';

  static const String setupYourAccountOrganizationScreen =
      '/setup_your_account_organization_screen';

  static const String setupYourAccountOrganizationTwoScreen =
      '/setup_your_account_organization_two_screen';

  static const String setupYourAccounttwoScreen =
      '/setup_your_accounttwo_screen';

  static const String setupYourAccountStudentNoTwoScreen =
      '/setup_your_account_student_no_two_screen';

  static const String setupYourAccountOrganizationThreeScreen =
      '/setup_your_account_organization_three_screen';

  static const String setupYourAccountStudentFourScreen =
      '/setup_your_account_student_four_screen';

  static const String homeScreen = '/home_screen';

  static const String homeListScreen = '/home_list_screen';

  static const String searchAnEventScreen = '/search_an_event_screen';

  static const String searchAnEventGpsScreen = '/search_an_event_gps_screen';

  static const String searchAnEventGpsMapScreen =
      '/search_an_event_gps_map_screen';

  static const String searchAnEventGpsMapOneScreen =
      '/search_an_event_gps_map_one_screen';

  static const String searchAnEventTimeScreen = '/search_an_event_time_screen';

  static const String eventsScreen = '/events_screen';

  static const String popularEventsScreen = '/popular_events_screen';

  static const String popularEventsRedHeartScreen =
      '/popular_events_red_heart_screen';

  static const String eventCategoriesScreen = '/event_categories_screen';

  static const String eventCategoriesStartupsScreen =
      '/event_categories_startups_screen';

  static const String eventCategoriesTechnologyScreen =
      '/event_categories_technology_screen';

  static const String eventCategoriesTedxeventsScreen =
      '/event_categories_tedxevents_screen';

  static const String eventCategoriesUniversityScreen =
      '/event_categories_university_screen';

  static const String sthWentWrongScreen = '/sth_went_wrong_screen';

  static const String favoritesScreen = '/favorites_screen';

  static const String volunteerScreen = '/volunteer_screen';

  static const String aboutUsScreen = '/about_us_screen';

  static const String profileScreen = '/profile_screen';

  static const String cameraOneScreen = '/camera_one_screen';

  static const String cameraScreen = '/camera_screen';

  static const String thinkBizScreen = '/think_biz_screen';

  static const String techconnectScreen = '/techconnect_screen';

  static const String tedxauebPangeaMainEventScreen =
      '/tedxaueb_pangea_main_event_screen';

  static const String partyAtNtuaScreen = '/party_at_ntua_screen';

  static const String openConferenceScreen = '/open_conference_screen';

  static const String planBizScreen = '/plan_biz_screen';

  static const String myBookingsScreen = '/my_bookings_screen';

  static const String myProgressScreen = '/my_progress_screen';

  static const String profileChangeNameScreen = '/profile_change_name_screen';

  static const String bookNowLinkScreen = '/book_now_link_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String loginNewcredentialsScreen =
      '/login_newcredentials_screen';

  static const String myEventsOrgScreen = '/my_events_org_screen';

  static const String thinkBizOrgScreen = '/think_biz_org_screen';

  static const String thinkBizProfileOrgScreen =
      '/think_biz_profile_org_screen';

  static const String thinkBizUploadAnEventOrgScreen =
      '/think_biz_upload_an_event_org_screen';

  static const String homeListOrgScreen = '/home_list_org_screen';

  static const String homeOrgScreen = '/home_org_screen';

  static const String teamIllustration3OneScreen =
      '/team_illustration_3_one_screen';

  static const String aboutUsOrgScreen = '/about_us_org_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        loginSignupScreen: LoginSignupScreen.builder,
        gmailEmailLoginScreen: GmailEmailLoginScreen.builder,
        gmailPasswordLoginScreen: GmailPasswordLoginScreen.builder,
        gmailVisiblepasswordLoginScreen:
            GmailVisiblepasswordLoginScreen.builder,
        facebookLoginScreen: FacebookLoginScreen.builder,
        facebookVisiblepasswordLoginScreen:
            FacebookVisiblepasswordLoginScreen.builder,
        appleLoginScreen: AppleLoginScreen.builder,
        loadingScreen: LoadingScreen.builder,
        loginScreen: LoginScreen.builder,
        loginVisiblepasswordScreen: LoginVisiblepasswordScreen.builder,
        loginErrorScreen: LoginErrorScreen.builder,
        forgotPasswordScreen: ForgotPasswordScreen.builder,
        forgotPasswordWrongemailScreen: ForgotPasswordWrongemailScreen.builder,
        forgotPasswordAllokScreen: ForgotPasswordAllokScreen.builder,
        signupScreen: SignupScreen.builder,
        signupCheckedScreen: (context) => SignupCheckedScreen(),
        signupUncheckerrorScreen: SignupUncheckerrorScreen.builder,
        setupYourAccountScreen: SetupYourAccountScreen.builder,
        setupYourAccountStudentScreen: SetupYourAccountStudentScreen.builder,
        setupYourAccountStudentYesScreen:
            SetupYourAccountStudentYesScreen.builder,
        setupYourAccountStudentNoScreen:
            SetupYourAccountStudentNoScreen.builder,
        successfullySignedUpScreen: SuccessfullySignedUpScreen.builder,
        successfullySignedUpOrgScreen: SuccessfullySignedUpOrgScreen.builder,
        gmailEmailSignupScreen: GmailEmailSignupScreen.builder,
        gmailPasswordSignupScreen: GmailPasswordSignupScreen.builder,
        gmailVisiblepasswordSignupScreen:
            GmailVisiblepasswordSignupScreen.builder,
        facebookSignupScreen: FacebookSignupScreen.builder,
        facebookVisiblepasswordSignupScreen:
            FacebookVisiblepasswordSignupScreen.builder,
        setupYourAccountOrganizationScreen:
            SetupYourAccountOrganizationScreen.builder,
        setupYourAccountOrganizationTwoScreen:
            SetupYourAccountOrganizationTwoScreen.builder,
        setupYourAccounttwoScreen: SetupYourAccounttwoScreen.builder,
        setupYourAccountStudentNoTwoScreen:
            SetupYourAccountStudentNoTwoScreen.builder,
        setupYourAccountOrganizationThreeScreen:
            SetupYourAccountOrganizationThreeScreen.builder,
        setupYourAccountStudentFourScreen:
            SetupYourAccountStudentFourScreen.builder,
        homeScreen: HomeScreen.builder,
        homeListScreen: HomeListScreen.builder,
        searchAnEventScreen: SearchAnEventScreen.builder,
        searchAnEventGpsScreen:(context) => SearchAnEventGpsMapScreen(),
        searchAnEventGpsMapScreen: SearchAnEventGpsMapScreen.builder,
        searchAnEventGpsMapOneScreen: SearchAnEventGpsMapOneScreen.builder,
        searchAnEventTimeScreen: SearchAnEventTimeScreen.builder,
        eventsScreen: EventsScreen.builder,
        popularEventsScreen: PopularEventsScreen.builder,
        popularEventsRedHeartScreen: PopularEventsRedHeartScreen.builder,
        eventCategoriesScreen: EventCategoriesScreen.builder,
        eventCategoriesStartupsScreen: EventCategoriesStartupsScreen.builder,
        eventCategoriesTechnologyScreen:
            EventCategoriesTechnologyScreen.builder,
        eventCategoriesTedxeventsScreen:
            EventCategoriesTedxeventsScreen.builder,
        eventCategoriesUniversityScreen:
            EventCategoriesUniversityScreen.builder,
        sthWentWrongScreen: SthWentWrongScreen.builder,
        favoritesScreen: FavoritesScreen.builder,
        volunteerScreen: VolunteerScreen.builder,
        aboutUsScreen: AboutUsScreen.builder,
        profileScreen: ProfileScreen.builder,
        cameraOneScreen: CameraOneScreen.builder,
        cameraScreen: CameraScreen.builder,
        thinkBizScreen: ThinkBizScreen.builder,
        techconnectScreen: TechconnectScreen.builder,
        tedxauebPangeaMainEventScreen: TedxauebPangeaMainEventScreen.builder,
        partyAtNtuaScreen: PartyAtNtuaScreen.builder,
        openConferenceScreen: OpenConferenceScreen.builder,
        planBizScreen: PlanBizScreen.builder,
        myBookingsScreen: MyBookingsScreen.builder,
        myProgressScreen: MyProgressScreen.builder,
        profileChangeNameScreen: ProfileChangeNameScreen.builder,
        bookNowLinkScreen: BookNowLinkScreen.builder,
        resetPasswordScreen: ResetPasswordScreen.builder,
        loginNewcredentialsScreen: LoginNewcredentialsScreen.builder,
        myEventsOrgScreen: MyEventsOrgScreen.builder,
        thinkBizOrgScreen: ThinkBizOrgScreen.builder,
        thinkBizProfileOrgScreen: ThinkBizProfileOrgScreen.builder,
        thinkBizUploadAnEventOrgScreen: ThinkBizUploadAnEventOrgScreen.builder,
        '/debug': (context) => DebugScreen(),
        homeOrgScreen: HomeOrgScreen.builder,
        teamIllustration3OneScreen: TeamIllustration3OneScreen.builder,
        aboutUsOrgScreen: AboutUsOrgScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: LoadingScreen.builder
      };
}
