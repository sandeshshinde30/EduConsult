import 'package:educonsult/widgets/custom_elevated_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:educonsult/core/app_export.dart';

// ignore: must_be_immutable
class CollegeconsultantlistItemWidget extends StatelessWidget {
  const CollegeconsultantlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.fillIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse16,
            height: 50.adaptSize,
            width: 50.adaptSize,
            radius: BorderRadius.circular(
              25.h,
            ),
          ),
          SizedBox(height: 3.v),
          Center(
            child: Text(
              "Gautam Adani",
              style: CustomTextStyles.labelMediumPoppinsWhiteA700,
            ),
          ),
          SizedBox(height: 1.v),
          Text(
            "SY-IT",
            style: CustomTextStyles.bodySmallWhiteA700,
          ),
          SizedBox(height: 2.v),
          _buildCONNECT(context),
          SizedBox(height: 3.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCONNECT(BuildContext context) {
    return CustomElevatedButton(
      height: 17.v,
      width: 73.h,
      text: "CONNECT",
      buttonStyle: CustomButtonStyles.fillLightBlue,
      buttonTextStyle: CustomTextStyles.labelMediumPoppinsGray800,
    );
  }
}
