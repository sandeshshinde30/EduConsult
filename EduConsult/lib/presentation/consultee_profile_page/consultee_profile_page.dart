import 'package:educonsult/widgets/app_bar/custom_app_bar.dart';
import 'package:educonsult/widgets/app_bar/appbar_subtitle.dart';
import 'package:educonsult/widgets/custom_text_form_field.dart';
import 'package:educonsult/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:educonsult/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ConsulteeProfilePage extends StatelessWidget {
  ConsulteeProfilePage({Key? key})
      : super(
          key: key,
        );

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
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
                  vertical: 24.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 114.v,
                        width: 110.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgUser,
                              height: 22.adaptSize,
                              width: 22.adaptSize,
                              alignment: Alignment.bottomRight,
                              margin: EdgeInsets.only(right: 4.h),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgEllipse12111x110,
                              height: 111.v,
                              width: 110.h,
                              radius: BorderRadius.circular(
                                55.h,
                              ),
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 19.v),
                    Text(
                      "Name",
                      style: CustomTextStyles.titleMediumInter,
                    ),
                    SizedBox(height: 3.v),
                    Padding(
                      padding: EdgeInsets.only(right: 8.h),
                      child: CustomTextFormField(
                        controller: nameController,
                        hintText: "Robert Fox",
                      ),
                    ),
                    SizedBox(height: 11.v),
                    Text(
                      "Email",
                      style: CustomTextStyles.titleMediumInter,
                    ),
                    SizedBox(height: 4.v),
                    Padding(
                      padding: EdgeInsets.only(right: 8.h),
                      child: CustomTextFormField(
                        controller: emailController,
                        hintText: "robertfox@gmail.com",
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.emailAddress,
                      ),
                    ),
                    SizedBox(height: 78.v),
                    CustomElevatedButton(
                      height: 45.v,
                      width: 221.h,
                      text: "Save changes",
                      alignment: Alignment.center,
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarSubtitle(
        text: "Profile",
      ),
    );
  }
}
