import 'package:educonsult/widgets/app_bar/custom_app_bar.dart';
import 'package:educonsult/widgets/app_bar/appbar_leading_image.dart';
import 'package:educonsult/widgets/app_bar/appbar_title.dart';
import 'widgets/collegeconsultantlist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:educonsult/core/app_export.dart';

class CollegeConsultantListScreen extends StatelessWidget {
  const CollegeConsultantListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: 312.h,
                margin: EdgeInsets.fromLTRB(24.h, 19.v, 24.h, 5.v),
                padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 22.v),
                decoration: AppDecoration.outlineBlackF
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Container(
                      width: 300.h,
                      child: Text("Walchand College of Engineering, Sangli",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleMediumIndigo900)),
                  SizedBox(height: 38.v),
                  _buildCollegeconsultantlist(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 49.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 26.h, top: 19.v, bottom: 19.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title:  Stack(alignment: Alignment.center, children: [
              // SizedBox(height: 50.h,),
              AppbarTitle(text: "Consultants"),
            ]));
  }

  /// Section Widget
  Widget _buildCollegeconsultantlist(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 125.v,
                crossAxisCount: 2,
                mainAxisSpacing: 23.h,
                crossAxisSpacing: 23.h),
            physics: NeverScrollableScrollPhysics(),
            itemCount: 4,
            itemBuilder: (context, index) {
              return CollegeconsultantlistItemWidget();
            }));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
