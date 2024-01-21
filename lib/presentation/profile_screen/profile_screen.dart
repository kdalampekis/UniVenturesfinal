import 'package:kwstas_s_application2/widgets/custom_outlined_button.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kwstas_s_application2/presentation/database';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:io';
import 'bloc/profile_bloc.dart';import 'models/profile_model.dart';import 'package:flutter/material.dart';import 'package:kwstas_s_application2/core/app_export.dart';import 'package:kwstas_s_application2/core/utils/validation_functions.dart';import 'package:kwstas_s_application2/widgets/custom_text_form_field.dart';import 'package:kwstas_s_application2/presentation/profile_photo_dialog/profile_photo_dialog.dart';

// ignore_for_file: must_be_immutable
class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileBloc>(create: (context) => ProfileBloc(
        ProfileState(profileModelObj: ProfileModel()))
      ..add(ProfileInitialEvent()), child: ProfileScreen());
  }



  @override Widget build(BuildContext context) {
    context.read<ProfileBloc>().add(ProfileInitialEvent());
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false,
            body: Form(key: _formKey,
                child: Container(width: double.maxFinite,
                    padding: EdgeInsets.symmetric(
                        horizontal: 6.h, vertical: 20.v),
                    child: Column(children: [
                      _buildSettingsRow(context),
                      SizedBox(height: 7.v),
                      Text("msg_unleash_your_academic".tr,
                          style: theme.textTheme.bodyLarge),
                      SizedBox(height: 50.v),
                      Text("lbl_my_profile2".tr,
                          style: theme.textTheme.displayLarge),
                      SizedBox(height: 17.v),
                      _buildProfileImage(context,state.imagePath),
                      SizedBox(height: 4.v),
                      GestureDetector(onTap: () {
                        onTapTxtChangeprofilepicture(context);
                      },
                          child: Text("msg_change_profile_picture".tr,
                              style: theme.textTheme.bodyMedium)),
                      SizedBox(height: 65.v),
                      _buildProfileInfoField("First Name", state.name),
                      SizedBox(height: 16.v),
                      _buildProfileInfoField("Last Name", state.lastName),
                      SizedBox(height: 11.v),
                      _buildProfileInfoField("Password", state.password),
                      SizedBox(height: 17.v),
                      _buildProfileInfoField("Email", state.email),
                      SizedBox(height: 5.v),
                      // Logout Button
                      CustomOutlinedButton(
                        text: "Logout".tr,
                        margin: EdgeInsets.only(left: 35.h, right: 36.h),
                        buttonStyle: ElevatedButton.styleFrom(
                            backgroundColor: CustomTextStyles
                                .displayMediumPrimary_1.color),
                        leftIcon: Container(margin: EdgeInsets.only(right: 16
                            .h), child: CustomImageView(imagePath: ImageConstant
                            .imgLock, height: 41.v, width: 47.h)),
                        onPressed: () {
                          // Navigate to the login screen
                          NavigatorService.pushNamedAndRemoveUntil(
                              AppRoutes.loginScreen
                          );
                        },
                        // Set your preferred text color
                      )
                    ])))));
      },);
  }

  /// Section Widget
  Widget _buildSettingsRow(BuildContext context) {
    return Container(margin: EdgeInsets.only(right: 2.h),
        padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 14.v),
        decoration: AppDecoration.outlinePrimary.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder50),
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgSettings, height: 68.v, width: 45.h),
          Padding(padding: EdgeInsets.only(left: 18.h, top: 8.v, bottom: 12.v),
              child: Text(
                  "lbl_univentures".tr, style: theme.textTheme.headlineLarge)),
          Spacer(),
          CustomImageView(imagePath: ImageConstant.imgOcticonThreeBars16,
              height: 35.v,
              width: 30.h,
              margin: EdgeInsets.only(top: 17.v, right: 6.h, bottom: 16.v),
              onTap: () {
                onTapImgOcticonThreeBarsSixteen(context);
              })
        ]));
  }

  /// Section Widget

  Widget _buildProfileImage(BuildContext context, String? imagePath) {
    if (imagePath == null || imagePath.isEmpty) {
      // No image exists, show camera icon
      return IconButton(
        icon: Icon(Icons.camera_alt, size: 122.v), // Adjust size as needed
        onPressed: () => onTapTxtChangeprofilepicture(context),
      );
    } else {
      // Image exists, load and display it
      return Image.file(
        File(imagePath),
        height: 122.v,
        width: 125.h,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          // Handle errors in loading the image
          return IconButton(
            icon: Icon(Icons.broken_image, size: 122.v), // Display broken image icon
            onPressed: () => onTapTxtChangeprofilepicture(context),
          );
        },
      );
    }
  }



  Widget _buildProfileInfoField(String label, String? value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(width: 10),
          Expanded(child: Text(value ?? 'Not available')),
        ],
      ),
    );
  }

  /// Section Widget

  Future<void> onTapTxtChangeprofilepicture(BuildContext context) async {
    final ImagePicker _picker = ImagePicker();
    final int? userId = await _getCurrentUserId();
    if (userId == null) return;

    try {
      final XFile? image = await _picker.pickImage(source: ImageSource.camera);
      if (image != null) { print(image.path);
        context.read<ProfileBloc>().add(UpdateProfileImageEvent(image.path));
      } final pic = await DatabaseHelper.instance.getUserImagePath(userId);
      print(pic);
    } catch (e) {
      // Handle errors here
    }
  }



  Future<int?> _getCurrentUserId() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt('userId');
  }


  onTapImgOcticonThreeBarsSixteen(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.homeListScreen,);
  }


}
