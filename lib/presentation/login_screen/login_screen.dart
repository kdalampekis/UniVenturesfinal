import 'package:kwstas_s_application2/presentation/database';
import 'package:shared_preferences/shared_preferences.dart';
import 'bloc/login_bloc.dart';
import 'package:flutter/material.dart';import 'package:kwstas_s_application2/core/app_export.dart';import 'package:kwstas_s_application2/core/utils/validation_functions.dart';import 'package:kwstas_s_application2/widgets/custom_icon_button.dart';import 'package:kwstas_s_application2/widgets/custom_outlined_button.dart';import 'package:kwstas_s_application2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {LoginScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

static Widget builder(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (context) => LoginBloc()..add(LoginInitialEvent()),
      child: LoginScreen(),
    );
  }
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Form(key: _formKey, child: SingleChildScrollView( child: Container(width: double.maxFinite , padding: EdgeInsets.symmetric(horizontal: 42.h),child: Column(children: [_buildArrowBackOutlineRow(context), SizedBox(height: 33.v), Column(children: [Container(width: 307.h, margin: EdgeInsets.symmetric(horizontal: 19.h), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_log_in_to_uni".tr, style: theme.textTheme.displayMedium), TextSpan(text: "lbl_ventures".tr, style: CustomTextStyles.displayMediumPrimary_1)]), textAlign: TextAlign.center)), SizedBox(height: 10.v), CustomImageView(imagePath: ImageConstant.imgLoginIllustration, height: 194.v, width: 170.h), SizedBox(height: 34.v), BlocSelector<LoginBloc, LoginState, TextEditingController?>(selector: (state) => state.emailController, builder: (context, emailController) {return CustomTextFormField(controller: emailController, hintText: "lbl_email".tr, hintStyle: theme.textTheme.headlineSmall!, textInputType: TextInputType.emailAddress, validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;});}), SizedBox(height: 15.v), BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {return CustomTextFormField(controller: state.passwordController, hintText: "lbl_password".tr, hintStyle: theme.textTheme.headlineSmall!, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, suffix: InkWell(onTap: () {context.read<LoginBloc>().add(ChangePasswordVisibilityEvent(value: !state.isShowPassword));}, child: Container(margin: EdgeInsets.fromLTRB(30.h, 17.v, 18.h, 17.v), child: CustomImageView(imagePath: ImageConstant.imgIoneyeoffoutlinePrimary, height: 29.v, width: 35.h))), suffixConstraints: BoxConstraints(maxHeight: 63.v), validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: state.isShowPassword, contentPadding: EdgeInsets.only(left: 30.h, top: 13.v, bottom: 13.v));}), SizedBox(height: 15.v), CustomOutlinedButton(text: "lbl_log_in".tr, buttonStyle: ElevatedButton.styleFrom(
    backgroundColor: CustomTextStyles.displayMediumPrimary_1.color), leftIcon: Container(margin: EdgeInsets.only(right: 22.h), child: CustomImageView(imagePath: ImageConstant.imgArrowLeftOnprimary, height: 36.v, width: 34.h)), onPressed: () {onTapLogIn(context);}), SizedBox(height: 17.v), GestureDetector(onTap: () {onTapTxtForgotPassword(context);}, child: Text("msg_forgot_password".tr, style: CustomTextStyles.titleLargeBlack900Light)), SizedBox(height: 15.v), GestureDetector(onTap: () {onTapTxtConfirmation(context);}, child: Text("msg_don_t_have_an_account".tr, style: CustomTextStyles.titleLargeBlack900Light)), SizedBox(height: 20.v), Text("msg_other_log_in_options".tr, style: CustomTextStyles.titleLargeInterBlack900), SizedBox(height: 5.v),])])))),bottomNavigationBar: _buildSpacer(context)));} 
/// Section Widget
Widget _buildArrowBackOutlineRow(BuildContext context) { return Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(right: 51.h), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgEvaArrowBackOutlineBlack900, height: 50.v, width: 50.h, margin: EdgeInsets.only(bottom: 2.v, top: 0.v), onTap: () {onTapImgEvaArrowBackOutline(context);}), Expanded(child: Container(width: 307.h, margin: EdgeInsets.only(left: 17.h, top: 11.v)))]))); }
Widget _buildSpacer(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 98.h, right: 98.h, bottom: 18.v), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomIconButton(height: 52.v, width: 54.h, padding: EdgeInsets.all(8.h), onTap: () {onTapBtnIconButton(context);}, child: CustomImageView(imagePath: ImageConstant.imgGroup352)), Spacer(flex: 50), SizedBox(height: 52.v, width: 54.h, child: Stack(alignment: Alignment.center, children: [CustomIconButton(height: 52.v, width: 54.h, alignment: Alignment.center, onTap: () {onTapBtnIconButton1(context);}, child: CustomImageView()), CustomImageView(imagePath: ImageConstant.imgVectorAmber500, height: 28.v, width: 29.h, alignment: Alignment.center), CustomImageView(imagePath: ImageConstant.imgVectorDeepOrangeA400, height: 11.v, width: 22.h, alignment: Alignment.topLeft, margin: EdgeInsets.only(left: 15.h, top: 12.v)), CustomImageView(imagePath: ImageConstant.imgVectorGreen500, height: 11.v, width: 22.h, alignment: Alignment.bottomLeft, margin: EdgeInsets.only(left: 15.h, bottom: 12.v)), CustomImageView(imagePath: ImageConstant.imgVectorBlue70001, height: 13.v, width: 14.h, alignment: Alignment.bottomRight, margin: EdgeInsets.only(right: 12.h, bottom: 16.v))])), Spacer(flex: 50), SizedBox(height: 52.v, width: 54.h, child: Stack(alignment: Alignment.topCenter, children: [CustomIconButton(height: 52.v, width: 54.h, alignment: Alignment.center, onTap: () {onTapBtnIconButton2(context);}, child: CustomImageView()), CustomImageView(imagePath: ImageConstant.imgVectorBlack90030x25, height: 30.v, width: 25.h, alignment: Alignment.topCenter, margin: EdgeInsets.only(top: 8.v))]))])); } 
/// onTapImgEvaArrowBackOutline(BuildContext context) { NavigatorService.pushNamed(AppRoutes.loginSignupScreen, ); } 
onTapImgEvaArrowBackOutline(BuildContext context) { NavigatorService.pushNamed(AppRoutes.loginSignupScreen, ); } 
/// Navigates to the loginSignupScreen when the action is triggered.
void onTapLogIn(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      // Retrieve email and password from their respective controllers
      String email = context.read<LoginBloc>().state.emailController!.text;
      String password = context.read<LoginBloc>().state.passwordController!.text;

      // Query the database for a user with the given credentials
      final dbHelper = DatabaseHelper.instance;
      var user = await dbHelper.getUserByEmailAndPassword(email, password);
      
      
      if (user != null) {
        // Navigate to the next screen if login is successful
         SharedPreferences prefs = await SharedPreferences.getInstance();
            await prefs.setInt('userId', user[DatabaseHelper.columnId]);
        NavigatorService.pushNamed(AppRoutes.homeScreen);
      } else {
        // Display an error message or navigate to the loginErrorScreen if login fails
        NavigatorService.pushNamed(AppRoutes.loginErrorScreen);
      }
    }
  }
/// Navigates to the forgotPasswordScreen when the action is triggered.
onTapTxtForgotPassword(BuildContext context) { NavigatorService.pushNamed(AppRoutes.forgotPasswordScreen, ); } 
/// Navigates to the signupScreen when the action is triggered.
onTapTxtConfirmation(BuildContext context) { NavigatorService.pushNamed(AppRoutes.signupScreen, ); } 
/// Navigates to the facebookLoginScreen when the action is triggered.
onTapBtnIconButton(BuildContext context) { NavigatorService.pushNamed(AppRoutes.facebookLoginScreen, ); } 
/// Navigates to the gmailEmailLoginScreen when the action is triggered.
onTapBtnIconButton1(BuildContext context) { NavigatorService.pushNamed(AppRoutes.gmailEmailSignupScreen, ); } 
/// Navigates to the appleLoginScreen when the action is triggered.
onTapBtnIconButton2(BuildContext context) { NavigatorService.pushNamed(AppRoutes.appleLoginScreen, ); } 
 }
