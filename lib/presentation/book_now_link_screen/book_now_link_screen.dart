import 'bloc/book_now_link_bloc.dart';
import 'models/book_now_link_model.dart';
import 'package:flutter/material.dart';
import 'package:kwstas_s_application2/core/app_export.dart';

class BookNowLinkScreen extends StatelessWidget {
  const BookNowLinkScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<BookNowLinkBloc>(
      create: (context) => BookNowLinkBloc(BookNowLinkState(
        bookNowLinkModelObj: BookNowLinkModel(),
      ))
        ..add(BookNowLinkInitialEvent()),
      child: BookNowLinkScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookNowLinkBloc, BookNowLinkState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 12.v),
              child: Column(
                children: [
                  SizedBox(height: 8.v),
                  _buildSettingsRow(context),
                  SizedBox(height: 7.v),
                  Flexible(child:
                  Text("msg_unleash_your_academic".tr, style: theme.textTheme.bodyLarge)),
                  SizedBox(height: 32.v),
                  Flexible(child:
                  Text("Congratulations and get ready!", style: CustomTextStyles.headlineLargePrimarySemiBold)),
                  SizedBox(height: 40.v),
                  Container(
                    width: 319.h,
                    margin: EdgeInsets.only(left: 45.h, right: 52.h),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Your spot at the event is confirmed! We're thrilled to have you join us. Prepare to dive into an experience filled with knowledge, fun, and unforgettable memories. Keep an eye on your email for further details and updates. Can't wait to see you there!",
                            style: CustomTextStyles.headlineSmallBlack900_2,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Spacer(),
                  Flexible(child:
                  CustomImageView(
                    imagePath: ImageConstant.imgHappyIllustrationBlueGray800,
                    height: 237.v,
                    width: 409.h,
                  ),
                  )],
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
      padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 14.v),
      decoration: AppDecoration.outlinePrimary.copyWith(borderRadius: BorderRadiusStyle.circleBorder50),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgSettings,
            height: 68.v,
            width: 45.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 18.h, top: 8.v, bottom: 12.v),
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
              margin: EdgeInsets.only(top: 17.v, right: 6.h, bottom: 16.v),
              onTap: () { onTapImgOcticonThreeBarsSixteen(context); }
          ),
        ],
      ),
    );
  }
}

onTapImgOcticonThreeBarsSixteen(BuildContext context) {
  NavigatorService.pushNamed(AppRoutes.homeListScreen,);
}
