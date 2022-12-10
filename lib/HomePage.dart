// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/CallSWidget.dart';
import 'package:whatsapp/widgets/ChatsWidget.dart';
import 'package:whatsapp/widgets/StatusWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 6,
        child: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(70),
              child: AppBar(
                elevation: 0,
                title: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    "WhatsApp",
                    style: TextStyle(fontSize: 21),
                  ),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0, right: 15),
                    child: Icon(
                      Icons.search,
                      size: 28,
                    ),
                  ),
                  PopupMenuButton(
                    onSelected: (value) {
                      if (value == 6){
                        Navigator.pushNamed(context, "settingsPage");
                      }
                    },
                    color: Colors.white,
                    iconSize: 28,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        value: 1,
                        child: Text(
                          "New Group",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                      ),
                      PopupMenuItem(
                        value: 2,
                        child: Text(
                          "New broadcast",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                      ),
                      PopupMenuItem(
                        value: 3,
                        child: Text(
                          "Linked devices",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                      ),
                      PopupMenuItem(
                        value: 4,
                        child: Text(
                          "Starred messages",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                      ),
                      PopupMenuItem(
                        value: 5,
                        child: Text(
                          "Payments",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                      ),
                      PopupMenuItem(
                        value: 6,
                        child: Text(
                          "Settings",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  )
                ],
              )),
          body: Column(
            children: [
              Container(
                  color: Color(0xff075e55),
                  child: TabBar(
                    isScrollable: true,
                    indicatorColor: Colors.white,
                    labelStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    tabs: [
                      //tab1
                      Container(
                        width: 24,
                        child: Tab(icon: Icon(Icons.camera_alt)),
                      ),
                      //tab2
                      Container(
                        width: 90,
                        child: Tab(
                            child: Row(
                          children: [
                            Text("CHATS"),
                            SizedBox(
                              width: 8,
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 22,
                              width: 22,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Text(
                                "10",
                                style: TextStyle(
                                    color: Color(0xff075e55), fontSize: 13),
                              ),
                            )
                          ],
                        )),
                      ),
                      Container(
                        width: 85,
                        child: Tab(
                          child: Text("STATUS"),
                        ),
                      ),
                      Container(
                        width: 85,
                        child: Tab(
                          child: Text("CALLS"),
                        ),
                      ),
                    ],
                  )),
                  Flexible(flex: 1,
                    child: TabBarView(children: [
                    //tab1
                    Container(
                      color: Colors.black,
                    ),

                  //tab2
                  ChatWidget(),
                  //tab3
                  StatusWidget(),
                
                    //tab4
                    CallsWidget(),
                  ],))
            ],
          ),
        ));
  }
}
