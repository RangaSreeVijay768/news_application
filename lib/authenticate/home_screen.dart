import 'package:chat_app/Authenticate/Methods.dart';
import 'package:chat_app/task_home_screen_model/task_home_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../group_chat/group_chat_screen.dart';
import '../my_app/blog_home_screen/blog_home_screen.dart';
import '../my_app/themes/app_colors.dart';
import '../my_app/themes/edge_insets.dart';
import '../my_app/themes/borders.dart';
import '../slider/slider.dart';
import '../task_home_screen_model/task_home_screen_model.dart';
import '../tracker_notification_toggle_btn_widget/tracker_notification_toggle_btn_widget.dart';
import 'chat_room.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with WidgetsBindingObserver {
  Map<String, dynamic>? userMap;
  bool isLoading = false;
  final TextEditingController _search = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
    setStatus("Online");
  }

  void setStatus(String status) async {
    await _firestore.collection('users').doc(_auth.currentUser!.uid).update({
      "status": status,
    });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      // online
      setStatus("Online");
    } else {
      // offline
      setStatus("Offline");
    }
  }

  String chatRoomId(String user1, String user2) {
    if (user1[0].toLowerCase().codeUnits[0] >
        user2.toLowerCase().codeUnits[0]) {
      return "$user1$user2";
    } else {
      return "$user2$user1";
    }
  }

  void onSearch() async {
    FirebaseFirestore _firestore = FirebaseFirestore.instance;

    setState(() {
      isLoading = true;
    });

    await _firestore
        .collection('users')
        .where("email", isEqualTo: _search.text)
        .get()
        .then((value) {
      setState(() {
        userMap = value.docs[0].data();
        isLoading = false;
      });
      print(userMap);
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
        actions: [
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => PdfHome()));
                          },
                          child: const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Pdf",
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => TaskHomeScreen()));
                          },
                          child: const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Blogs",
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => BlogHomeScreen()));
                          },
                          child: const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "blognew",
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
          ),
          IconButton(icon: Icon(Icons.logout), onPressed: () => logOut(context))
        ],
      ),
      body: isLoading
          ? Center(
        child: Container(
          height: size.height / 20,
          width: size.height / 20,
          child: CircularProgressIndicator(),
        ),
      )
          : Column(
        children: [
          SizedBox(
            height: size.height / 20,
          ),
          Container(
            height: size.height / 14,
            width: size.width,
            alignment: Alignment.center,
            child: Container(
              height: size.height / 14,
              width: size.width / 1.15,
              child: TextField(
                controller: _search,
                decoration: InputDecoration(
                  hintText: "Search",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height / 50,
          ),
          ElevatedButton(
            onPressed: onSearch,
            child: Text("Search"),
          ),
          SizedBox(
            height: size.height / 30,
          ),
          userMap != null
              ? ListTile(
            onTap: () {
              String roomId = chatRoomId(
                  _auth.currentUser!.displayName!,
                  userMap!['name']);

              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => ChatRoom(
                    chatRoomId: roomId,
                    userMap: userMap!,
                  ),
                ),
              );
            },
            leading: Icon(Icons.account_box, color: Colors.black),
            title: Text(
              userMap!['name'],
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: Text(userMap!['email']),
            trailing: Icon(Icons.chat, color: Colors.black),
          )
              : Container(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.group),
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => GroupChatHomeScreen(),
          ),
        ),
      ),
    );
  }
}






