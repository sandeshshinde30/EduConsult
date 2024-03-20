import 'package:educonsult/widgets/custom_text_form_field.dart';
import 'package:educonsult/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:educonsult/core/app_export.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 28.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 40.v),
                    Text(
                      "Login Here",
                      style: TextStyle(fontSize: 25.h,fontFamily: 'Popins',fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 14.v),
                    Container(
                      width: 224.h,
                      margin: EdgeInsets.only(
                        left: 39.h,
                        right: 40.h,
                      ),
                      child: Text(
                        "Welcome back you’ve been missed",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleMediumBluegray800,
                      ),
                    ),
                    SizedBox(height: 61.v),
                    _buildSeventeen(context),
                    SizedBox(height: 28.v),
                    _buildSeventeen1(context),
                    SizedBox(height: 19.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forgot your password?",
                        style: TextStyle(fontFamily: 'popins',fontSize: 14.h,color: Color(0xFF169BD7)),
                      ),
                    ),
                    SizedBox(height: 35.v),
                    CustomElevatedButton(
                      height: 50.v,
                      width:  MediaQuery.of(context).size.width,
                      buttonTextStyle: TextStyle(fontSize: 18.h,fontFamily: 'popins',color: Colors.white),
                      text: "Sign in",
                    ),
                    SizedBox(height: 31.v),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(right: 0.h),
                        child: Text(
                          "Create new account",
                          style: TextStyle(fontFamily: 'popins',fontSize: 15.h,color: Color(0xFF172452)),
                        ),
                      ),
                    ),
                    SizedBox(height: 40.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(right: 15.h),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: 10.v,
                                bottom: 11.v,
                              ),
                              child: SizedBox(
                                width: 60.h,
                                child: Divider(),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 7.h),
                              child: Text(
                                "Or Login with",
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 10.v,
                                bottom: 11.v,
                              ),
                              child: SizedBox(
                                width: 60.h,
                                child: Divider(
                                  indent: 5.h,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 36.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 75.h,
                        right: 81.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 24.v,
                            width: 25.h,
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [

                                CustomImageView(
                                  imagePath: ImageConstant.imgMobile,
                                  height: 10.v,
                                  width: 19.h,
                                  alignment: Alignment.bottomLeft,
                                  margin: EdgeInsets.only(left: 1.h),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgVectorOnerror,
                                  height: 11.v,
                                  width: 5.h,
                                  alignment: Alignment.centerLeft,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    height: 10.v,
                                    width: 19.h,
                                    margin: EdgeInsets.only(left: 1.h),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgUserRed500,
                                          height: 10.v,
                                          width: 19.h,
                                          alignment: Alignment.center,
                                        ),
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgUserRed500,
                                          height: 10.v,
                                          width: 19.h,
                                          alignment: Alignment.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(
                            flex: 50,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgVector,
                            height: 26.v,
                            width: 23.h,
                          ),
                          Spacer(
                            flex: 49,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgFacebook,
                            height: 25.adaptSize,
                            width: 25.adaptSize,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventeen(BuildContext context) {
    return SizedBox(
      height: 50.v,
      width: 303.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 28.h),
              child: Text(
                "Email",
                style: TextStyle(fontSize: 13.h,fontFamily: 'popins'),
              ),
            ),
          ),
          CustomTextFormField(
            autofocus: false,
            width: 303.h,
            controller: emailController,
            hintText: "Email",
            hintStyle: TextStyle(fontSize: 13.h,fontFamily: 'popins'),
            textStyle: TextStyle(fontSize: 13.h,fontWeight: FontWeight.bold,fontFamily: 'popins'),
            textInputType: TextInputType.emailAddress,
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }

  Widget _buildSeventeen1(BuildContext context) {
    return SizedBox(
      height: 57.v,
      width: 303.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 28.h),
              child: Text(
                "Password",
                style: TextStyle(fontSize: 13.h),
              ),
            ),
          ),
          CustomTextFormField(
            autofocus: false,
            width: 303.h,
            controller: passwordController,
            hintText: "Password",
            hintStyle: TextStyle(fontSize: 13.h,fontFamily: 'popins'),
            textStyle: TextStyle(fontSize: 13.h,fontWeight: FontWeight.bold,fontFamily: 'popins'),
            textInputType: TextInputType.visiblePassword,
            obscureText: true,
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}
