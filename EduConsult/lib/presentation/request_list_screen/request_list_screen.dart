import 'package:educonsult/presentation/consultee_chat_list_page/consultee_chat_list_page.dart';
import 'widgets/requestlist_item_widget.dart';
import 'package:educonsult/widgets/custom_bottom_bar_consultant.dart';
import 'package:flutter/material.dart';
import 'package:educonsult/core/app_export.dart';

class RequestListScreen extends StatelessWidget {
  RequestListScreen({Key? key})
      : super(
          key: key,
        );

  late List<dynamic>? data;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)?.settings.arguments as List?;
    if (data == null || data!.isEmpty) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('No data available'),
        ),
      );
    }
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 15.h,
            vertical: 43.v,
          ),
          child: Column(
            children: [
              const Text(
                "Requests",
                style: TextStyle(
                    color: Color.fromARGB(255, 17, 24, 52),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 18.v),
              _buildRequestlist(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildRequestlist(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 1.h),
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 20.v,
            );
          },
          itemCount: data!.length,
          itemBuilder: (context, index) {
            return RequestlistItemWidget(
              index: index, // Pass index as named argument
              data: data,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        final currentRoute = getCurrentRoute(type);
        if (currentRoute == AppRoutes.homeScreenConsultantScreen) {
          Navigator.pop(context);
        } else {
          Navigator.pushReplacementNamed(context, getCurrentRoute(type));
        }
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeScreenConsultantScreen;
      case BottomBarEnum.Requests:
        return AppRoutes.requestListScreen;
      case BottomBarEnum.Chat:
        return AppRoutes.consultantChatListContainerScreen;
      case BottomBarEnum.Profile:
        return AppRoutes.consultantProfileScreen;
      default:
        return '/';
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
