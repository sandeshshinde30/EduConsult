import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CollegelistItemWidget extends StatefulWidget {
  const CollegelistItemWidget({Key? key}) : super(key: key);

  @override
  _CollegelistItemWidgetState createState() => _CollegelistItemWidgetState();
}

class _CollegelistItemWidgetState extends State<CollegelistItemWidget> {
  @override
  Widget build(BuildContext context) {
    String colleID = '6007';
    return InkWell(
      onTap: () {
        // Call your function to fetch consultants here
        fetchConsultants(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 9),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: Color(0xFF169BD7),width: 2),
          color: Colors.transparent,
        ),
        child: Row(
          children: [
            _buildSixThousandSixHundredOne(context),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 8),
                child: Text(
                  "Walchand College of Engineering, Sangli",
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
        color: Color(0xFF169BD7),
      ),
      child: Center(
        child: Text(
          "6007",
          style: TextStyle(color: Colors.white),
        ),
      ),
      margin: EdgeInsets.only(top: 1),
    );
  }

  Future<void> fetchConsultants(BuildContext context) async {
    try {
      var url = Uri.parse("http://192.168.52.145/Educonsult_API/fetch_consultants.php");

      var response = await http.post(url, body: {
        'CollegeID': '6007', // Assuming '6007' is the hardcoded college ID
      });


      if (response.body.isNotEmpty) {
        List<dynamic> data = jsonDecode(response.body);

        if(data != Null)
          {
            print(data);
            Navigator.pushNamed(context,'/college_consultant_list_screen',arguments: data);
          }
      }
    } catch (e) {
      print("Fetch Consultants Error: $e");
      // Handle error appropriately
    }
  }
}
