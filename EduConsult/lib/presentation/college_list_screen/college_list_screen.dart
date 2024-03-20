import 'package:educonsult/presentation/consultee_chat_list_page/consultee_chat_list_page.dart';
import 'widgets/collegelist_item_widget.dart';
import 'package:educonsult/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:educonsult/core/app_export.dart';

class CollegeListScreen extends StatelessWidget {
  CollegeListScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 15.h,
            vertical: 33.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 106.h),
                child: Text(
                  "Colleges",
                  style: TextStyle(color: Color.fromARGB(255, 17, 24, 52),fontSize: 25,fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 37.v),
              _buildCollegelist(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildCollegelist(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 22.v,
        );
      },
      itemCount: 5,
      itemBuilder: (context, index) {
        return CollegelistItemWidget();
      },
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.consulteeChatListPage;
      case BottomBarEnum.College:
        return "/";
      case BottomBarEnum.Chat:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.consulteeChatListPage:
        return ConsulteeChatListPage();
      default:
        return DefaultWidget();
    }
  }
}
