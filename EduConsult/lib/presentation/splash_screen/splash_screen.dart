import 'dart:async';

import 'package:flutter/material.dart';
import 'package:educonsult/core/app_export.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    timing();
  }

  // After 2 seconds it will call intro screen
  Future<void> timing() async {
    Timer(
        Duration(seconds: 3),
        () =>
            Navigator.pushReplacementNamed(context, '/login_register_screen'));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 41.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEduconsultRemovebgPreview,
                height: 200.v,
                width: 220.h,
              ),
              SizedBox(height: 22.v),
              Text(
                "E D U C O N S U L T",
                style: CustomTextStyles.titleMediumPrimary,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
