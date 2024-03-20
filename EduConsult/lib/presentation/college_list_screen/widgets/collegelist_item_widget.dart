import 'package:educonsult/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:educonsult/core/app_export.dart';

// ignore: must_be_immutable
class CollegelistItemWidget extends StatelessWidget {
  const CollegelistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlineBlue.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: Row(
        children: [
          _buildSixThousandSixHundredOne(context),
          Expanded(
            child: Container(
              width: 223.h,
              margin: EdgeInsets.only(
                left: 8.h,
                top: 3.v,
              ),
              child: Text(
                "Walchand College of Engineering, sangli",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSixThousandSixHundredOne(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
            color: Colors.blue
      ),
      child:Center(child: Text( "6007",style: TextStyle(color: Colors.white),)),

      margin: EdgeInsets.only(top: 1.v),
    );
  }
}
