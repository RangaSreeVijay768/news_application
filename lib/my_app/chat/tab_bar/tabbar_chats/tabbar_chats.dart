import 'package:chat_app/my_app/chat/tab_bar/tabbar_chats/tab_bar_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../themes/app_colors.dart';
import '../../../themes/edge_insets.dart';
import '../../../themes/fonts.dart';

class TabBarChats extends StatefulWidget{
  const TabBarChats({super.key});

  @override
  State<TabBarChats> createState() => _TabBarChatsState();
}

class _TabBarChatsState extends State<TabBarChats>{

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index){
          return Stack(
            children: [
              Tooltip(
                textAlign: TextAlign.start,
                message: 'hiiii',
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => TabBarChatContent()));
                  },
                  child: Container(
                    padding: edge_insets_10,
                    height: 80,
                    // decoration: BoxDecoration(
                    //     border: borders.bb_1px_grey4
                    // ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: AppColors.textNormal,
                            shape: BoxShape.circle,
                          ),
                          child: SizedBox(),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: edge_insets_t_4,
                                child: Text(
                                  "Hello world",
                                  style: TextStyle(
                                      fontSize: Fonts.fontSize18,
                                      fontWeight: Fonts.f500
                                  ),
                                ),
                              ),
                              Container(
                                // padding: edge_insets_t_4,
                                child: const Text(
                                  "Hey there, Welcome to Chat",
                                  style: TextStyle(
                                      fontSize: Fonts.fontSize16,
                                      fontWeight: Fonts.f400
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          );
        }
    );
  }

}