import 'package:flutter/material.dart';
import 'package:bablu_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class NotificationscreenItemWidget extends StatelessWidget {
  const NotificationscreenItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.v),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 78.v,
            width: 75.h,
            margin: EdgeInsets.only(bottom: 4.v),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle2,
                  height: 74.v,
                  width: 71.h,
                  radius: BorderRadius.circular(
                    10.h,
                  ),
                  alignment: Alignment.bottomRight,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(
                        10.h,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 3.v,
              bottom: 6.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 117.h,
                  margin: EdgeInsets.only(left: 1.h),
                  child: Text(
                    "Request from \nAbhishek",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 1.v),
                Text(
                  "Walchand College of Enginerring",
                  style: theme.textTheme.labelLarge,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
