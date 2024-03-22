import 'package:educonsult/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:educonsult/core/app_export.dart';

class RequestlistItemWidget extends StatefulWidget {
  final int index;
  final List? data;

  const RequestlistItemWidget({Key? key, required this.index, this.data})
      : super(key: key);

  @override
  _RequestlistItemWidgetState createState() => _RequestlistItemWidgetState();
}

class _RequestlistItemWidgetState extends State<RequestlistItemWidget> {
  @override
  Widget build(BuildContext context) {
    if (widget.data == null ||
        widget.data!.isEmpty ||
        widget.index < 0 ||
        widget.index >= widget.data!.length) {
      return SizedBox(); // Return an empty SizedBox if data is null, empty, or index is out of bounds
    }

    String consulteeName = widget.data![widget.index]['consulteeName'] ?? '';
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
                      SizedBox(height: 15,),
                       Text(
                        '$consulteeName',
                        style: TextStyle(
                          color: Color.fromRGBO(17, 24, 52, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 3.v),
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
      text: "Accept",
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
      text: "Reject",
      margin: EdgeInsets.only(left: 10.h),
      buttonTextStyle: theme.textTheme.titleSmall!,
    );
  }
}
