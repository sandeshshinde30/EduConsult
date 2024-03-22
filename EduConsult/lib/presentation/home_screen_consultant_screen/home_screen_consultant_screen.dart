import 'dart:convert';

import 'package:educonsult/presentation/consultee_profile_page/consultee_profile_page.dart';
import 'package:educonsult/widgets/custom_elevated_button.dart';
import 'package:educonsult/widgets/custom_bottom_bar_consultant.dart';
import 'package:flutter/material.dart';
import 'package:educonsult/core/app_export.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class HomeScreenConsultantScreen extends StatefulWidget {
  HomeScreenConsultantScreen({Key? key}) : super(key: key);



  @override
  _HomeScreenConsultantScreenState createState() =>
      _HomeScreenConsultantScreenState();

}

class _HomeScreenConsultantScreenState
    extends State<HomeScreenConsultantScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  late SharedPreferences prefCheckLogin;
  var consultant_name = "";
  late List<dynamic> data;

  @override
  void initState() {
    super.initState();
    initializePreferences();
  }

  Future<void> initializePreferences() async {
    prefCheckLogin  = await SharedPreferences.getInstance();
    consultant_name = prefCheckLogin.getString("name")!;
    if(consultant_name!=Null)
      {
        fetchRequest(context);
      }
  }

  Future<void> fetchRequest(BuildContext context) async
  {

    try {
      var url = Uri.parse("http://192.168.52.145/Educonsult_API/see_requests.php");

      var response = await http.post(url, body: {
        'ConsultantName': consultant_name, // Assuming '6007' is the hardcoded college ID
      });


      if (response.body.isNotEmpty) {
        data = jsonDecode(response.body);

        if(data != Null)
        {
          print(data);
          // Navigator.pushNamed(context,'/college_consultant_list_screen',arguments: data);
        }
        else
        {
          print("Problem");
        }
      }
    } catch (e) {
      print("Fetch Consultants Error: $e");
      // Handle error appropriately
    }
  }

  @override
  Widget build(BuildContext context) {
    final Object? data = ModalRoute.of(context)?.settings.arguments;
    String userName = data.toString();
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(top: 40.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTwentySix(context,userName),
              SizedBox(height: 30.v),
              Container(
                width: 350.h,
                margin: EdgeInsets.only(left: 26.h),
                child: Text(
                  "Discover Unparalleled, \nExquisite Counsel.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Color.fromRGBO(143, 143, 143, 1.0),
                    fontSize: 25.h,
                    fontWeight: FontWeight.bold,
                    wordSpacing: 2,
                  ),
                ),
              ),
              SizedBox(height: 25.v),
              CustomElevatedButton(
                height: 41.v,
                width: 151.h,
                text: "100% genuine",
                margin: EdgeInsets.only(left: 26.h),
                buttonStyle: CustomButtonStyles.fillBlueGray,
                buttonTextStyle: CustomTextStyles.titleMediumInterGray200,
              ),
              SizedBox(height: 35.v),
              Padding(
                padding: EdgeInsets.only(left: 29.h),
                child: const Text(
                  "Our Experties",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
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
                      text: "Requests",
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
  Widget _buildTwentySix(BuildContext context,String userName) {
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
                    "$consultant_name!  👋 ",
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

  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        // final currentContext = navigatorKey.currentContext;
        // if (currentContext != null) {
        final currentRoute = getCurrentRoute(type);
        if (currentRoute == AppRoutes.homeScreenConsultantScreen) {
          Navigator.pushReplacementNamed(context, currentRoute);
        }
        else if(currentRoute == AppRoutes.requestListScreen) {
          Navigator.pushNamed(context, getCurrentRoute(type),arguments: data);
        }
        else {
          Navigator.pushNamed(context, getCurrentRoute(type));
        }

        // }
        // else
        //   {
        //     print("Some Problem");
        //   }
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeScreenConsultantScreen;
      case BottomBarEnum.Requests:
        return AppRoutes.requestListScreen;
      case BottomBarEnum.Chat:
        return AppRoutes.consultantChatListContainerScreen;
      case BottomBarEnum.Profile:
        return AppRoutes.consultantProfileScreen;
      default:
        return '/';
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
