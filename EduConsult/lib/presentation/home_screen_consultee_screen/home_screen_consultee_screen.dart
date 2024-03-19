import 'package:bablu_s_application1/presentation/consultee_profile_page/consultee_profile_page.dart';
import 'package:bablu_s_application1/widgets/custom_elevated_button.dart';
import 'package:bablu_s_application1/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:bablu_s_application1/core/app_export.dart';

class HomeScreenConsulteeScreen extends StatelessWidget {
  HomeScreenConsulteeScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(top: 72.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTwentySix(context),
              SizedBox(height: 37.v),
              Container(
                width: 238.h,
                margin: EdgeInsets.only(left: 26.h),
                child: Text(
                  "Get the best guidance ",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.displayMedium,
                ),
              ),
              SizedBox(height: 9.v),
              CustomElevatedButton(
                height: 41.v,
                width: 151.h,
                text: "100% genuine",
                margin: EdgeInsets.only(left: 26.h),
                buttonStyle: CustomButtonStyles.fillBlueGray,
                buttonTextStyle: CustomTextStyles.titleMediumInterGray200,
              ),
              SizedBox(height: 39.v),
              Padding(
                padding: EdgeInsets.only(left: 29.h),
                child: Text(
                  "Our Experties",
                  style: CustomTextStyles.titleMediumInterOnErrorContainer,
                ),
              ),
              SizedBox(height: 11.v),
              _buildFortyOne(context),
              SizedBox(height: 38.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 26.h,
                  right: 58.h,
                ),
                child: Row(
                  children: [
                    CustomElevatedButton(
                      width: 134.h,
                      text: "Colleges",
                      buttonStyle: CustomButtonStyles.fillLightBlueE,
                      buttonTextStyle:
                          CustomTextStyles.titleMediumInterGray20002,
                    ),
                    CustomElevatedButton(
                      width: 134.h,
                      text: "Chats",
                      margin: EdgeInsets.only(left: 8.h),
                      buttonStyle: CustomButtonStyles.fillOnPrimaryContainer,
                      buttonTextStyle:
                          CustomTextStyles.titleMediumInterBluegray900,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentySix(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 29.h,
          right: 36.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle262x63,
              height: 62.v,
              width: 63.h,
              radius: BorderRadius.circular(
                20.h,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 27.h,
                top: 5.v,
                bottom: 5.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome",
                    style: CustomTextStyles.titleLargeBluegray40001,
                  ),
                  Text(
                    "Sam!  👋 ",
                    style: CustomTextStyles.titleLargeBluegray900,
                  ),
                ],
              ),
            ),
            Spacer(),
            CustomImageView(
              imagePath: ImageConstant.imgNotificationsUnread,
              height: 28.v,
              width: 27.h,
              margin: EdgeInsets.only(
                top: 13.v,
                bottom: 21.v,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyOne(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 23.h),
        child: IntrinsicWidth(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 110.v,
                width: 179.h,
                decoration: BoxDecoration(
                  color: appTheme.blueGray100,
                  borderRadius: BorderRadius.circular(
                    20.h,
                  ),
                ),
              ),
              Container(
                height: 110.v,
                width: 179.h,
                margin: EdgeInsets.only(left: 21.h),
                decoration: BoxDecoration(
                  color: appTheme.blueGray100,
                  borderRadius: BorderRadius.circular(
                    20.h,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.consulteeProfilePage;
      case BottomBarEnum.College:
        return "/";
      case BottomBarEnum.Chat:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.consulteeProfilePage:
        return ConsulteeProfilePage();
      default:
        return DefaultWidget();
    }
  }
}
