import 'package:educonsult/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:educonsult/core/app_export.dart';

// ignore: must_be_immutable
class RequestlistItemWidget extends StatelessWidget {
  const RequestlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 26.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 10.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse12,
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  radius: BorderRadius.circular(
                    25.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 17.h,
                    bottom: 5.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Esther Howard",
                        style: TextStyle(
                          color: Color.fromRGBO(17, 24, 52, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 3.v),
                      const Text(
                        "College Of Engineering Pune",
                        style: TextStyle(
                          color: Color.fromRGBO(54, 54, 54, 1),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(right: 21.h),
            child: Row(
              children: [
                _buildReject(context),
                _buildAccept(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildReject(BuildContext context) {
    return CustomOutlinedButton(
      width: 123.h,
      text: "Reject",
      buttonStyle: const ButtonStyle(
        backgroundColor:
            MaterialStatePropertyAll(Color.fromRGBO(16, 26, 78, 1)),
      ),
    );
  }

  /// Section Widget
  Widget _buildAccept(BuildContext context) {
    return CustomOutlinedButton(
      width: 123.h,
      text: "Accept",
      margin: EdgeInsets.only(left: 10.h),
      buttonStyle: CustomButtonStyles.outlineIndigoTL18,
      buttonTextStyle: theme.textTheme.titleSmall!,
    );
  }
}
