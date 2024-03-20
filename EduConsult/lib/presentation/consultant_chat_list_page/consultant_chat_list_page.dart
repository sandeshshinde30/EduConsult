import 'package:educonsult/widgets/custom_search_view.dart';
import 'widgets/consultantchatlist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:educonsult/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ConsultantChatListPage extends StatelessWidget {
  ConsultantChatListPage({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 6.h,
                  right: 10.h,
                ),
                child: CustomSearchView(
                  controller: searchController,
                  hintText: "Search Chat",
                ),
              ),
              SizedBox(height: 25.v),
              Divider(
                color: appTheme.blueGray50,
                indent: 10.h,
                endIndent: 10.h,
              ),
              SizedBox(height: 21.v),
              _buildConsultantchatlist(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildConsultantchatlist(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 18.v,
          );
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return ConsultantchatlistItemWidget();
        },
      ),
    );
  }
}
