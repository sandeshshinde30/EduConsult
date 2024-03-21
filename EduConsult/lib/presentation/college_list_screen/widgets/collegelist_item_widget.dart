import 'dart:convert';

import 'package:educonsult/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:educonsult/core/app_export.dart';
import 'package:http/http.dart' as http;
// ignore: must_be_immutable
class CollegelistItemWidget extends StatelessWidget {
  const CollegelistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

        Navigator.pushNamed(context,'/college_consultant_list_screen');

        },
      child: Container(
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


// College consultant list calling API

Future fetchConsultants(BuildContext context) async {
  try {
    var url = Uri.parse("http://192.168.52.145/EduConsult_API/login.php");

    var response = await http.post(url, body: {

    });

    Map Data;
    if (response.body.isNotEmpty) {
      Data = jsonDecode(response.body);

      // Data = "false";
      if (Data['result'] == "true") {
        Navigator.of(context).pop();
        if(Data['designation'] == "consultee") Navigator.pushReplacementNamed(context, '/home_screen_consultee_screen',arguments: Data['name'] );
        else Navigator.pushReplacementNamed(context, '/home_screen_consultant_screen',arguments: Data['name']);
      }
      else {
        Navigator.of(context).pop();
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Error'),
                content: Text("Invalid Login",),
                actions: <Widget>[
                  TextButton(
                    child: Text('OK'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            }
        );
      }
    }
  }
  catch(e) {
    Navigator.of(context).pop();
    print("Login Error");
    print(e);
  }
}
