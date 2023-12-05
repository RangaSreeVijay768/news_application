import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../themes/app_colors.dart';
import '../../../themes/edge_insets.dart';
import '../../../themes/fonts.dart';
import '../../../themes/borders.dart';

class TabBarChatContent extends StatefulWidget{
  const TabBarChatContent({super.key});

  @override
  State<TabBarChatContent> createState() => _TabBarChatContentState();

}

class _TabBarChatContentState extends State<TabBarChatContent>{
  List<String> _messages = [];
  double? lat, lon;
  ScrollController _scrollController = ScrollController();
  final TextEditingController _textController = TextEditingController();
  void _saveLat(String input) {
    lat = double.tryParse(input);
    print(lat);
  }

  void _sendMessage() {
    setState(() {
      String message = _textController.text;
      if (message.isNotEmpty) {
        _messages.add(message);
        _textController.clear();
      }
    });

    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent,
      duration: Duration(milliseconds: 3),
      curve: Curves.easeOut,
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        backgroundColor: AppColors.grey4,
        elevation: 10,
        title: Container(
          alignment: Alignment.centerLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      padding: edge_insets_0,
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back)
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: AppColors.textNormal,
                      shape: BoxShape.circle,
                    ),
                    child: SizedBox(),
                  ),
                  SizedBox(width: 8,),
                  Text("Name", style: TextStyle(
                      fontWeight: Fonts.f600,
                      fontSize: Fonts.fontSize20
                  ),),
                ],
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.call)
                  ),
                  IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.video_call)
                  ),
                  Container(
                    padding: edge_insets_0,
                    child: PopupMenuButton(
                      padding: edge_insets_0,
                      elevation: 10,
                      shadowColor: AppColors.textHeading,
                      surfaceTintColor: AppColors.bgPrimary,
                      constraints: const BoxConstraints(
                        maxWidth: 200,
                      ),
                      shape: RoundedRectangleBorder(borderRadius: borderRadius.br_10),
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

                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      body: Column(
        // alignment: Alignment.bottomCenter,
        children: [
          Expanded(
            child: ListView.builder(
              padding: edge_insets_b_60,
              controller: _scrollController,
              // reverse: true,
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_messages[index], textAlign: TextAlign.right,),
                );
              },
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Expanded(child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: borderRadius.br_30
                  ),
                  child: Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.smiley)),
                      Expanded(child: TextField(
                        controller: _textController,
                        decoration: InputDecoration(
                          hintText: 'Enter a search term',
                        ),
                      )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: edge_insets_0,
                            width: 40,
                            child: IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.doc_circle)),
                          ),
                          Container(
                            padding: edge_insets_0,
                            width: 40,
                            child: IconButton(onPressed: (){}, icon: Icon(Icons.currency_rupee_rounded)),
                          ),
                          Container(
                            padding: edge_insets_0,
                            width: 40,
                            child: IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.camera_circle)),
                          ),
                        ],
                      ),
                      SizedBox(width: 5,)
                    ],
                  ),
                )),
                IconButton(
                  onPressed: (){
                    setState(() {
                      _sendMessage();
                      _textController.clear();
                    });
                  },
                  icon: Icon(Icons.send, size: 20,),
                  style: IconButton.styleFrom(backgroundColor: AppColors.bgPrimary),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

}