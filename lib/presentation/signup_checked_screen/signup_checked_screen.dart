import 'bloc/signup_checked_bloc.dart';import 'models/signup_checked_model.dart';import 'package:flutter/material.dart';import 'package:kwstas_s_application2/core/app_export.dart';import 'package:kwstas_s_application2/core/utils/validation_functions.dart';import 'package:kwstas_s_application2/widgets/custom_icon_button.dart';import 'package:kwstas_s_application2/widgets/custom_outlined_button.dart';import 'package:kwstas_s_application2/widgets/custom_text_form_field.dart';import 'package:kwstas_s_application2/presentation/apple_signup_bottomsheet/apple_signup_bottomsheet.dart';
import 'package:kwstas_s_application2/presentation/database';


// ignore_for_file: must_be_immutable
class SignupCheckedScreen extends StatefulWidget {
  SignupCheckedScreen({Key? key}) : super(key: key);

  @override
  _SignupCheckedScreenState createState() => _SignupCheckedScreenState();
}

class _SignupCheckedScreenState extends State<SignupCheckedScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late TextEditingController firstNameController;
  late TextEditingController lastNameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;
  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;

  @override
  void initState() {
    super.initState();
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

static Widget builder(BuildContext context) { return BlocProvider<SignupCheckedBloc>(create: (context) => SignupCheckedBloc(SignupCheckedState(signupCheckedModelObj: SignupCheckedModel()))..add(SignupCheckedInitialEvent()), child: SignupCheckedScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Form(key: _formKey, child: SingleChildScrollView( child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 18.v), child: Column(children: [_buildArrowBackOutlineRow(context), SizedBox(height: 33.v), _buildFirstNameEditText(context), SizedBox(height: 16.v), _buildLastNameEditText(context), SizedBox(height: 16.v), _buildEmailEditText(context), SizedBox(height: 16.v), _buildPasswordEditText(context), SizedBox(height: 16.v), _buildConfirmPasswordEditText(context), SizedBox(height: 16.v), _buildSignUpButton(context), SizedBox(height: 8.v), _buildIAgreeToAbideStack(context), SizedBox(height: 1.v), GestureDetector(onTap: () {onTapTxtConfirmation(context);}, child: Text("msg_already_have_an".tr, style: CustomTextStyles.titleLargeBlack900Light)), SizedBox(height: 5.v), Text("msg_or_register_with".tr, style: CustomTextStyles.titleLargeInterBlack900)])))), bottomNavigationBar: _buildSpacerRow(context)),);}
/// Section Widget
Widget _buildArrowBackOutlineRow(BuildContext context) { return Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(right: 51.h), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgEvaArrowBackOutlineBlack900, height: 39.v, width: 36.h, margin: EdgeInsets.only(bottom: 111.v), onTap: () {onTapImgEvaArrowBackOutline(context);}), Expanded(child: Container(width: 307.h, margin: EdgeInsets.only(left: 17.h, top: 11.v), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_sign_up_for_uni".tr, style: theme.textTheme.displayMedium), TextSpan(text: "lbl_ventures".tr, style: CustomTextStyles.displayMediumPrimary_1)]), textAlign: TextAlign.center)))]))); } 
/// Section Widget
Widget _buildFirstNameEditText(BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(left: 35.h, right: 36.h),
    child: CustomTextFormField(
          controller: firstNameController,
          hintText: "lbl_first_name".tr,
          hintStyle: theme.textTheme.headlineSmall!,
          textInputType: TextInputType.name, // Adjust the TextInputType as needed
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "err_msg_please_enter_first_name".tr;
            }
            return null;
          },
          obscureText: false // Set to false for normal text input
        ));
      }

Widget _buildLastNameEditText(BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(left: 35.h, right: 36.h),
    child: CustomTextFormField(
          controller: lastNameController,
          hintText: "lbl_last_name".tr,
          hintStyle: theme.textTheme.headlineSmall!,
          textInputType: TextInputType.name, // Adjust the TextInputType as needed
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "err_msg_please_enter_last_name".tr;
            }
            return null;
          },
          obscureText: false // Set to false for normal text input
        ));
      }


/// Section Widget
Widget _buildEmailEditText(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 35.h, right: 36.h), child: CustomTextFormField(controller: emailController, hintText: "lbl_email".tr, hintStyle: theme.textTheme.headlineSmall!, textInputType: TextInputType.emailAddress, validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;}, obscureText: false));}
/// Section Widget
  Widget _buildPasswordEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 35.h, right: 36.h),
      child: CustomTextFormField(
        controller: passwordController,
        hintText: "lbl_create_password".tr,
        hintStyle: theme.textTheme.headlineSmall!,
        textInputType: TextInputType.visiblePassword,
        obscureText: !isPasswordVisible, // Use the correct visibility state
        suffix: IconButton( // Use suffixIcon instead of suffix
          icon: Icon(
            isPasswordVisible ? Icons.visibility : Icons.visibility_off, // Use isPasswordVisible
          ),
          onPressed: () {
            setState(() {
              isPasswordVisible = !isPasswordVisible; // Toggle the isPasswordVisible state
            });
          },
        ),
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        contentPadding: EdgeInsets.only(left: 30.h, top: 13.v, bottom: 13.v),
      ),
    );
  }

/// Section Widget
  Widget _buildConfirmPasswordEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 35.h, right: 36.h),
      child: BlocBuilder<SignupCheckedBloc, SignupCheckedState>(
        builder: (context, state) {
          return CustomTextFormField(
            controller: state.confirmPasswordEditTextController,
            hintText: "msg_confirm_password".tr,
            hintStyle: theme.textTheme.headlineSmall!,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            obscureText: !state.isShowPassword1, // Control visibility based on BLoC state
            suffix: IconButton( // Use IconButton for suffix
              icon: Icon(
                state.isShowPassword1 ? Icons.visibility : Icons.visibility_off,
              ),
              onPressed: () {
                // Dispatch event to BLoC to toggle visibility
                context.read<SignupCheckedBloc>().add(
                    ChangePasswordVisibilityEvent1(value: !state.isShowPassword1)
                );
              },
            ),
            validator: (value) {
              if (value == null || (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            contentPadding: EdgeInsets.only(left: 30.h, top: 13.v, bottom: 13.v),
          );
        },
      ),
    );
  }
/// Section Widget

Widget _buildSignUpButton(BuildContext context) {
  return CustomOutlinedButton(
    text: "lbl_sign_up".tr,
    margin: EdgeInsets.only(left: 35.h, right: 36.h),
    buttonStyle: ElevatedButton.styleFrom(
        backgroundColor: CustomTextStyles.displayMediumPrimary_1.color),
    leftIcon: Container(
        margin: EdgeInsets.only(right: 16.h),
        child: CustomImageView(
            imagePath: ImageConstant.imgLock, height: 41.v, width: 47.h)),
    onPressed: () async {
      if (_formKey.currentState!.validate()) {

        // Get data from controllers
        String name =
            firstNameController
            ?.text ?? '';
        String lastName =
            lastNameController
            ?.text ?? '';
        String email = emailController
            ?.text ?? '';
        String password = passwordController
            ?.text ?? '';

        // Insert data into the database
        final dbHelper = DatabaseHelper.instance;
        Map<String, dynamic> row = {
          DatabaseHelper.columnName: name,
          DatabaseHelper.columnLastName: lastName,
          DatabaseHelper.columnEmail: email,
          DatabaseHelper.columnPassword: password,
        };
        await dbHelper.insert(row);

        // Navigate to the next screen
        NavigatorService.pushNamed(AppRoutes.setupYourAccountScreen);
        //_checkStoredData(context);
      }
    }
  );
}
 

Widget _buildIAgreeToAbideStack(BuildContext context) { return SizedBox(height: 65.v, width: 373.h, child: Stack(alignment: Alignment.topLeft, children: [Align(alignment: Alignment.center, child: SizedBox(width: 364.h, child: Text("msg_i_agree_to_abide".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.titleLargeBlack900Light))), CustomImageView(imagePath: ImageConstant.imgSystemuiconscheckboxchecked, height: 33.adaptSize, width: 33.adaptSize, alignment: Alignment.topLeft, onTap: () {onTapImgSystemUiconsC(context);})])); } 
/// Section Widget
Widget _buildSpacerRow(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 98.h, right: 98.h, bottom: 18.v), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomIconButton(height: 52.v, width: 54.h, padding: EdgeInsets.all(8.h), onTap: () {onTapBtnIconButton(context);}, child: CustomImageView(imagePath: ImageConstant.imgGroup352)), Spacer(flex: 50), SizedBox(height: 52.v, width: 54.h, child: Stack(alignment: Alignment.center, children: [CustomIconButton(height: 52.v, width: 54.h, alignment: Alignment.center, child: CustomImageView()), CustomImageView(imagePath: ImageConstant.imgVectorAmber500, height: 28.v, width: 29.h, alignment: Alignment.center), CustomImageView(imagePath: ImageConstant.imgVectorDeepOrangeA400, height: 11.v, width: 22.h, alignment: Alignment.topLeft, margin: EdgeInsets.only(left: 15.h, top: 12.v)), CustomImageView(imagePath: ImageConstant.imgVectorGreen500, height: 11.v, width: 22.h, alignment: Alignment.bottomLeft, margin: EdgeInsets.only(left: 15.h, bottom: 12.v)), CustomImageView(imagePath: ImageConstant.imgVectorBlue70001, height: 13.v, width: 14.h, alignment: Alignment.bottomRight, margin: EdgeInsets.only(right: 12.h, bottom: 16.v), onTap: () {onTapImgVector(context);})])), Spacer(flex: 50), SizedBox(height: 52.v, width: 54.h, child: Stack(alignment: Alignment.topCenter, children: [CustomIconButton(height: 52.v, width: 54.h, alignment: Alignment.center, onTap: () {onTapBtnIconButton1(context);}, child: CustomImageView()), CustomImageView(imagePath: ImageConstant.imgVectorBlack90030x25, height: 30.v, width: 25.h, alignment: Alignment.topCenter, margin: EdgeInsets.only(top: 8.v))]))])); } 
/// Navigates to the loginSignupScreen when the action is triggered.
onTapImgEvaArrowBackOutline(BuildContext context) { NavigatorService.pushNamed(AppRoutes.loginSignupScreen, ); } 
/// Navigates to the setupYourAccountScreen when the action is triggered.
onTapSignUpButton(BuildContext context) async {
  if (_formKey.currentState!.validate()) {
    print("Debug: state is ${context.read<SignupCheckedBloc>().state}");
    print("Debug: firstNameEditTextController is ${context.read<SignupCheckedBloc>().state.firstNameEditTextController}");
    print("First Name: ${context.read<SignupCheckedBloc>().state.firstNameEditTextController!.text}");
    print("Last Name: ${context.read<SignupCheckedBloc>().state.lastNameEditTextController!.text}");
    print("Email: ${context.read<SignupCheckedBloc>().state.emailEditTextController!.text}");
    print("Password: ${context.read<SignupCheckedBloc>().state.passwordEditTextController!.text}");

    // Get data from controllers
    String name = context.read<SignupCheckedBloc>().state.firstNameEditTextController?.text??'';
    String lastName = context.read<SignupCheckedBloc>().state.lastNameEditTextController?.text??'';
    String email = context.read<SignupCheckedBloc>().state.emailEditTextController?.text??'';
    String password = context.read<SignupCheckedBloc>().state.passwordEditTextController?.text??'';

    // Insert data into the database
    final dbHelper = DatabaseHelper.instance;
    Map<String, dynamic> row = {
      DatabaseHelper.columnName: name,
      DatabaseHelper.columnLastName: lastName,
      DatabaseHelper.columnEmail: email,
      DatabaseHelper.columnPassword: password,
    };
    await dbHelper.insert(row);

    // Navigate to the next screen
    NavigatorService.pushNamed(AppRoutes.setupYourAccountScreen);
    _checkStoredData(context);
  }
}

/// Navigates to the signupScreen when the action is triggered.
onTapImgSystemUiconsC(BuildContext context) { NavigatorService.pushNamed(AppRoutes.signupScreen, ); } 
/// Navigates to the loginScreen when the action is triggered.
onTapTxtConfirmation(BuildContext context) { NavigatorService.pushNamed(AppRoutes.loginScreen, ); } 
/// Navigates to the facebookSignupScreen when the action is triggered.
onTapBtnIconButton(BuildContext context) { NavigatorService.pushNamed(AppRoutes.facebookSignupScreen, ); } 
/// Navigates to the gmailEmailSignupScreen when the action is triggered.
onTapImgVector(BuildContext context) { NavigatorService.pushNamed(AppRoutes.gmailEmailSignupScreen, ); } 
onTapBtnIconButton1(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>AppleSignupBottomsheet.builder(context),isScrollControlled: true); }

Future<void> _checkStoredData(BuildContext context) async {
    final dbHelper = DatabaseHelper.instance;

    // Query the database for stored data
    List<Map<String, dynamic>> allRows = await dbHelper.queryAllRows();
    String storedData = allRows.map((row) => 
      "Name: ${row[DatabaseHelper.columnName]}, Last Name: ${row[DatabaseHelper.columnLastName]}, Email: ${row[DatabaseHelper.columnEmail]}, Password: ${row[DatabaseHelper.columnPassword]}")
      .join("\n");

    // Display the stored data
    _showDebugDialog(context, storedData);
  }

  void _showDebugDialog(BuildContext context, String storedData) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Stored Data"),
          content: SingleChildScrollView(
            child: Text(storedData),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

 }
