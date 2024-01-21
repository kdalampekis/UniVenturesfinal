import 'bloc/profile_change_name_bloc.dart';
import 'models/profile_change_name_model.dart';
import 'package:flutter/material.dart';
import 'package:kwstas_s_application2/core/app_export.dart';
import 'package:kwstas_s_application2/core/utils/validation_functions.dart';
import 'package:kwstas_s_application2/widgets/custom_text_form_field.dart';

class ProfileChangeNameScreen extends StatelessWidget {
  ProfileChangeNameScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileChangeNameBloc>(
      create: (context) => ProfileChangeNameBloc(ProfileChangeNameState(
        profileChangeNameModelObj: ProfileChangeNameModel(),
      ))
        ..add(ProfileChangeNameInitialEvent()),
      child: ProfileChangeNameScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 6.h,
              vertical: 20.v,
            ),
            child: Column(
              children: [
                _buildSettingsRow(context),
                SizedBox(height: 7.v),
                Text(
                  "msg_unleash_your_academic".tr,
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 49.v),
                Text(
                  "lbl_my_profile2".tr,
                  style: theme.textTheme.displayLarge,
                ),
                SizedBox(height: 18.v),
                CustomImageView(
                  imagePath: ImageConstant.img1,
                  height: 122.v,
                  width: 125.h,
                ),
                SizedBox(height: 4.v),
                Text(
                  "msg_change_profile_picture".tr,
                  style: theme.textTheme.bodyMedium,
                ),
                SizedBox(height: 65.v),
                _buildLanguageEditText(context),
                SizedBox(height: 16.v),
                _buildUserTypeEditText(context),
                SizedBox(height: 11.v),
                _buildPasswordEditText(context),
                SizedBox(height: 17.v),
                _buildEmailEditText(context),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
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
              bottom: 16.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLanguageEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 35.h,
        right: 31.h,
      ),
      child: BlocSelector<ProfileChangeNameBloc, ProfileChangeNameState,
          TextEditingController?>(
        selector: (state) => state.languageEditTextController,
        builder: (context, languageEditTextController) {
          return CustomTextFormField(
            controller: languageEditTextController,
            hintText: "lbl2".tr,
            hintStyle: CustomTextStyles.headlineSmallBlack900,
            contentPadding: EdgeInsets.symmetric(horizontal: 5.h),
            borderDecoration: TextFormFieldStyleHelper.underLineGray,
            filled: false,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildUserTypeEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 35.h,
        right: 31.h,
      ),
      child: BlocBuilder<ProfileChangeNameBloc, ProfileChangeNameState>(
        builder: (context, state) {
          return CustomTextFormField(
            controller: state.userTypeEditTextController,
            hintText: "lbl_user".tr,
            hintStyle: CustomTextStyles.headlineSmallBlack900_1,
            textInputType: TextInputType.visiblePassword,
            suffix: InkWell(
              onTap: () {
                context.read<ProfileChangeNameBloc>().add(
                    ChangePasswordVisibilityEvent(
                        value: !state.isShowPassword));
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(30.h, 5.v, 1.h, 9.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgPhxcirclefill,
                  height: 21.v,
                  width: 20.h,
                ),
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 36.v,
            ),
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: state.isShowPassword,
            contentPadding: EdgeInsets.only(left: 5.h),
            borderDecoration: TextFormFieldStyleHelper.underLineGray,
            filled: false,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 35.h,
        right: 30.h,
      ),
      child: BlocBuilder<ProfileChangeNameBloc, ProfileChangeNameState>(
        builder: (context, state) {
          return CustomTextFormField(
            controller: state.passwordEditTextController,
            hintText: "lbl_reset_password".tr,
            hintStyle: CustomTextStyles.headlineSmallBlack900_1,
            textInputType: TextInputType.visiblePassword,
            suffix: InkWell(
              onTap: () {
                context.read<ProfileChangeNameBloc>().add(
                    ChangePasswordVisibilityEvent1(
                        value: !state.isShowPassword1));
              },
              child: Container(
                margin: EdgeInsets.only(
                  left: 30.h,
                  top: 6.v,
                  bottom: 5.v,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgArrowleftIndigoA400,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 36.v,
            ),
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: state.isShowPassword1,
            contentPadding: EdgeInsets.only(left: 5.h),
            borderDecoration: TextFormFieldStyleHelper.underLineGray,
            filled: false,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 35.h,
        right: 31.h,
      ),
      child: BlocBuilder<ProfileChangeNameBloc, ProfileChangeNameState>(
        builder: (context, state) {
          return CustomTextFormField(
            controller: state.emailEditTextController,
            hintText: "msg_email_user_icloud_com".tr,
            hintStyle: CustomTextStyles.headlineSmallBlack900_1,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.emailAddress,
            suffix: InkWell(
              onTap: () {
                context.read<ProfileChangeNameBloc>().add(
                    ChangePasswordVisibilityEvent2(
                        value: !state.isShowPassword2));
              },
              child: Container(
                margin: EdgeInsets.only(
                  left: 30.h,
                  top: 3.v,
                  bottom: 8.v,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgMditick,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 36.v,
            ),
            validator: (value) {
              if (value == null || (!isValidEmail(value, isRequired: true))) {
                return "err_msg_please_enter_valid_email".tr;
              }
              return null;
            },
            obscureText: state.isShowPassword2,
            contentPadding: EdgeInsets.only(left: 5.h),
            borderDecoration: TextFormFieldStyleHelper.underLineGray,
            filled: false,
          );
        },
      ),
    );
  }
}
