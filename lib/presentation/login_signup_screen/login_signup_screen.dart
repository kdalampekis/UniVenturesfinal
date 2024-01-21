import 'bloc/login_signup_bloc.dart';
import 'models/login_signup_model.dart';
import 'package:flutter/material.dart';
import 'package:kwstas_s_application2/core/app_export.dart';
import 'package:kwstas_s_application2/widgets/custom_outlined_button.dart';

class LoginSignupScreen extends StatelessWidget {
  const LoginSignupScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginSignupBloc>(
      create: (context) => LoginSignupBloc(LoginSignupState(
          loginSignupModelObj: LoginSignupModel()))
        ..add(LoginSignupInitialEvent()),
      child: LoginSignupScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginSignupBloc, LoginSignupState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SingleChildScrollView(
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    SizedBox(height: 81.v),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: "lbl_uni".tr,
                              style: theme.textTheme.displayMedium),
                          TextSpan(
                              text: "lbl_ventures".tr,
                              style: CustomTextStyles.displayMediumPrimary_1)
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 56.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgMaskGroup,
                        height: 155.v,
                        width: 186.h),
                    SizedBox(height: 74.v),
                    CustomOutlinedButton(
                        text: "lbl_log_in".tr,
                        margin: EdgeInsets.only(left: 45.h, right: 44.h),
                        leftIcon: Container(
                            margin: EdgeInsets.only(right: 30.h),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgArrowleft,
                                height: 36.v,
                                width: 34.h)),
                        buttonStyle: CustomButtonStyles.outlinePrimary,
                        buttonTextStyle:
                            CustomTextStyles.headlineSmallPrimarySemiBold,
                        onPressed: () {
                          onTapLogIn(context);
                        }),
                    SizedBox(height: 15.v),
                    CustomOutlinedButton(
                        text: "lbl_sign_up".tr,
                        margin: EdgeInsets.only(left: 45.h, right: 44.h),
                        leftIcon: Container(
                            margin: EdgeInsets.only(right: 20.h),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgMingcuteuseraddline,
                                height: 41.v,
                                width: 47.h)),
                        buttonStyle: CustomButtonStyles.outlinePrimary,
                        buttonTextStyle:
                            CustomTextStyles.headlineSmallPrimarySemiBold,
                        onPressed: () {
                          onTapSignUp(context);
                        }),
                    SizedBox(height: 52.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgSignupIllustration,
                        height: 253.v,
                        width: 413.h)
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  onTapLogIn(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.loginScreen, );
  }

  onTapSignUp(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.signupScreen, );
  }
}
