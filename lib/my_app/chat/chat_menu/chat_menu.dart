// import 'package:chat_app/slider/slider.dart';
// import 'package:chat_app/task_home_screen/task_home_screen.dart';
import 'package:chat_app/tracker_notification_toggle_btn_widget/tracker_notification_toggle_btn_widget.dart';
import 'package:flutter/material.dart';
import '../../../slider/slider.dart';
import '../../themes/app_colors.dart';
import '../../themes/edge_insets.dart';
import '../../themes/borders.dart';
import '../tab_bar/tabbar_chats/tabbar_chats.dart';


class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this, );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.bgPrimary2,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Chat App', style: TextStyle(color: AppColors.grey4),),
            Container(
              padding: edge_insets_0,
              child: PopupMenuButton(
                padding: edge_insets_0,
                elevation: 10,
                shadowColor: AppColors.textHeading,
                surfaceTintColor: AppColors.bgPrimary,
                constraints: const BoxConstraints(
                  // minWidth: 90,
                  maxWidth: 200,
                ),
                color: AppColors.white,
                shape: RoundedRectangleBorder(borderRadius: borderRadius.br_10),
                icon: const Icon(
                  Icons.menu,
                  color: AppColors.textHeading,
                ),
                offset: const Offset(0.0, 60.0),
                itemBuilder: (BuildContext context) => [
                  PopupMenuItem(
                      child: Container(
                        width: 200,
                        decoration: BoxDecoration(border: borders.bb_1px_grey4),
                        child: TextButton(
                            style: TextButton.styleFrom(
                                padding: edge_insets_0,
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero)),
                            onPressed: () {
                              Navigator.of(context).pop();
                              Navigator.push(context, MaterialPageRoute(builder: (context) => SliderWidget()));
                            },
                            child: const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Slider",
                                textAlign: TextAlign.left,
                                style: TextStyle(color: AppColors.textHeading),
                              ),
                            )),
                      )),
                  
                  PopupMenuItem(
                      child: Container(
                        width: 200,
                        decoration: BoxDecoration(border: borders.bb_1px_grey4),
                        child: TextButton(
                            style: TextButton.styleFrom(
                                padding: edge_insets_0,
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero)),
                            onPressed: () {
                              Navigator.of(context).pop();
                              Navigator.push(context, MaterialPageRoute(builder: (context) => SliderWidget()));
                            },
                            child: const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Slider",
                                textAlign: TextAlign.left,
                                style: TextStyle(color: AppColors.textHeading),
                              ),
                            )),
                      )),
                  PopupMenuItem(
                      child: Container(
                        width: 200,
                        decoration: BoxDecoration(border: borders.bb_1px_grey4),
                        child: TextButton(
                            style: TextButton.styleFrom(
                                padding: edge_insets_0,
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero)),
                            onPressed: () {
                              Navigator.of(context).pop();
                              // Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyApp5()));
                            },
                            child: const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Api data",
                                textAlign: TextAlign.left,
                                style: TextStyle(color: AppColors.textHeading),
                              ),
                            )),
                      )),
                  PopupMenuItem(
                      child: Container(
                        width: 200,
                        decoration: BoxDecoration(border: borders.bb_1px_grey4),
                        child: TextButton(
                            style: TextButton.styleFrom(
                                padding: edge_insets_0,
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero)),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Reminders",
                                textAlign: TextAlign.left,
                                style: TextStyle(color: AppColors.textHeading),
                              ),
                            )),
                      )),
                  PopupMenuItem(
                      child: Container(
                        width: 200,
                        decoration: BoxDecoration(border: borders.bb_1px_grey4),
                        child: TextButton(
                            style: TextButton.styleFrom(
                                padding: edge_insets_0,
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero)),
                            onPressed: () {
                              Navigator.of(context).pop();
                              Navigator.push(context, MaterialPageRoute(builder: (context) => TrackerNotificationToggleBtnWidget()));
                            },
                            child: const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Toggle button",
                                textAlign: TextAlign.left,
                                style: TextStyle(color: AppColors.textHeading),
                              ),
                            )),
                      )),
                ],
              ),
            )
          ],
        ),
        bottom: TabBar(
          isScrollable: true,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorWeight: 3,
          // labelPadding: edge_insets_0,
          indicatorColor: AppColors.white,
          labelColor: AppColors.white,
          controller: _tabController,
          tabAlignment: TabAlignment.center,
          padding: edge_insets_0,
          tabs: <Widget>[

            // Container(
            //   padding: edge_insets_0,
            //   // width: 10,
            //   height: 50,
            //   alignment: Alignment.centerLeft,
            //   child: Icon(
            //     Icons.person,size: 10,
            //   )
            // ),
            Container(
                width: MediaQuery.of(context).size.width/4,
                height: 50,
                alignment: Alignment.center,
                child: Text("CHATS")),
            Container(
                width: MediaQuery.of(context).size.width/4,
                height: 50,
                alignment: Alignment.center,
                child: Text("STATUS")),
            Container(
                width: MediaQuery.of(context).size.width/4,
                height: 50,
                alignment: Alignment.center,
                child: Text("CALLS"))
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          // Center(
          //   child: Container(
          //     // decoration: BoxDecoration(),
          //     child: Text("It's cloudy here"),
          //   ),
          // ),
          TabBarChats(),
          Center(
            child: Text("It's rainy here"),
          ),
          Center(
            child: Text("It's sunny here"),
          ),
        ],
      ),
    );
  }
}