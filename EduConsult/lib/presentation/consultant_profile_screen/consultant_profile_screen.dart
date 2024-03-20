import 'package:educonsult/presentation/consultant_chat_list_page/consultant_chat_list_page.dart';
import 'package:educonsult/widgets/custom_text_form_field.dart';
import 'package:educonsult/widgets/custom_drop_down.dart';
import 'package:educonsult/widgets/custom_elevated_button.dart';
import 'package:educonsult/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:educonsult/core/app_export.dart';

class ConsultantProfileScreen extends StatelessWidget {
  ConsultantProfileScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController twentyTwoController = TextEditingController();

  TextEditingController twentyTwoController1 = TextEditingController();

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 17.h,
                  vertical: 51.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Profile",
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                    SizedBox(height: 12.v),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 77.v,
                        width: 75.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgUser,
                              height: 15.adaptSize,
                              width: 15.adaptSize,
                              alignment: Alignment.bottomRight,
                              margin: EdgeInsets.only(right: 3.h),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgEllipse12,
                              height: 75.adaptSize,
                              width: 75.adaptSize,
                              radius: BorderRadius.circular(
                                37.h,
                              ),
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 27.v),
                    Text(
                      "Name",
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 3.v),
                    _buildName(context),
                    SizedBox(height: 11.v),
                    Text(
                      "Email",
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 4.v),
                    _buildEmail(context),
                    SizedBox(height: 13.v),
                    Text(
                      "College",
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 2.v),
                    _buildTwentyTwo(context),
                    SizedBox(height: 13.v),
                    Text(
                      "Department",
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 2.v),
                    _buildTwentyTwo1(context),
                    SizedBox(height: 12.v),
                    Text(
                      "Year",
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 3.v),
                    Padding(
                      padding: EdgeInsets.only(right: 8.h),
                      child: CustomDropDown(
                        icon: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 16.v, 20.h, 16.v),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgArrowdown,
                            height: 11.v,
                            width: 14.h,
                          ),
                        ),
                        hintText: "Second Year",
                        items: dropdownItemList,
                      ),
                    ),
                    SizedBox(height: 36.v),
                    _buildSaveChanges(context),
                    SizedBox(height: 6.v),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.h),
      child: CustomTextFormField(
        controller: nameController,
        hintText: "Robert Fox",
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.h),
      child: CustomTextFormField(
        controller: emailController,
        hintText: "robertfox@gmail.com",
        textInputType: TextInputType.emailAddress,
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyTwo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.h),
      child: CustomTextFormField(
        controller: twentyTwoController,
        hintText: "Walchand College Of Engineering ",
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyTwo1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.h),
      child: CustomTextFormField(
        controller: twentyTwoController1,
        hintText: "Information technology",
        textInputAction: TextInputAction.done,
      ),
    );
  }

  /// Section Widget
  Widget _buildSaveChanges(BuildContext context) {
    return CustomElevatedButton(
      height: 45.v,
      width: 221.h,
      text: "Save changes",
      alignment: Alignment.center,
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
        return AppRoutes.consultantChatListPage;
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
      case AppRoutes.consultantChatListPage:
        return ConsultantChatListPage();
      default:
        return DefaultWidget();
    }
  }
}
