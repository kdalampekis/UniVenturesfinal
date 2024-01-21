import 'bloc/login_newcredentials_bloc.dart';
import 'models/login_newcredentials_model.dart';
import 'package:flutter/material.dart';
import 'package:kwstas_s_application2/core/app_export.dart';
import 'package:kwstas_s_application2/widgets/custom_outlined_button.dart';

class LoginNewcredentialsScreen extends StatelessWidget {
  const LoginNewcredentialsScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginNewcredentialsBloc>(
      create: (context) => LoginNewcredentialsBloc(LoginNewcredentialsState(
        loginNewcredentialsModelObj: LoginNewcredentialsModel(),
      ))
        ..add(LoginNewcredentialsInitialEvent()),
      child: LoginNewcredentialsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginNewcredentialsBloc, LoginNewcredentialsState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 9.h,
                vertical: 12.v,
              ),
              child: Column(
                children: [
                  SizedBox(height: 14.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgSettings,
                    height: 68.v,
                    width: 45.h,
                  ),
                  SizedBox(height: 95.v),
                  Container(
                    width: 351.h,
                    margin: EdgeInsets.only(
                      left: 29.h,
                      right: 31.h,
                    ),
                    child: Text(
                      "msg_you_have_successfully".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.headlineSmallInterBlack900Light,
                    ),
                  ),
                  SizedBox(height: 50.v),
                  SizedBox(
                    width: 236.h,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_sign_in".tr,
                            style: theme.textTheme.displayMedium,
                          ),
                          TextSpan(
                            text: "msg_with_your_new_credentials".tr,
                            style: theme.textTheme.headlineLarge,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 62.v),
                  CustomOutlinedButton(
                    text: "lbl_go_to_log_in".tr,
                    margin: EdgeInsets.only(
                      left: 35.h,
                      right: 36.h,
                    ),
                  ),
                  SizedBox(height: 42.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgHappyIllustrationBlueGray800,
                    height: 237.v,
                    width: 409.h,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
