import 'package:flutter/material.dart';
import 'package:educonsult/core/app_export.dart';

// ignore: must_be_immutable
class ConsultantchatlistItemWidget extends StatelessWidget {
  const ConsultantchatlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7.h),
      decoration: AppDecoration.outlinePrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse6,
            height: 50.adaptSize,
            width: 50.adaptSize,
            radius: BorderRadius.circular(
              25.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 11.v,
              bottom: 15.v,
            ),
            child: Text(
              "Esther Howard",
              style: CustomTextStyles.titleMediumPoppinsGray90001,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              right: 7.h,
              bottom: 9.v,
            ),
            child: Column(
              children: [
                Text(
                  "15.29",
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 1.v),
                Container(
                  width: 23.adaptSize,
                  padding: EdgeInsets.symmetric(
                    horizontal: 6.h,
                    vertical: 1.v,
                  ),
                  decoration: AppDecoration.fillPrimaryContainer.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder11,
                  ),
                  child: Text(
                    "2",
                    style: CustomTextStyles.bodyMediumGray20002,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
