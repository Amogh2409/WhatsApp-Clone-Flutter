// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/ChatBottomBar.dart';
import 'package:whatsapp/widgets/ChatSample.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBar(
          elevation: 0,
          leading: Padding(
            padding: EdgeInsets.only(top: 10, left: 5),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                size: 25,
              ),
            ),
          ),
          leadingWidth: 20,
          title: Padding(
            padding: EdgeInsets.only(top: 5),
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  "profile1.jpg",
                  height: 45,
                  width: 45,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Flutter Coder",
                        style: TextStyle(fontSize: 19),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Text(
                          "online",
                          style: TextStyle(
                              fontSize: 15, color: Colors.white.withOpacity(0.8)),
                        ),
                      )
                    ],
                  ))
            ]),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(top: 10, right: 25),
              child: Icon(
                CupertinoIcons.video_camera_solid,
                size: 33,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, right: 20),
              child: Icon(
                Icons.call,
                size: 25,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, right: 10),
              child: Icon(
                Icons.more_vert,
                size: 28,
              ),
            )
          ],
            
          )),

          body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("Background-1.jpg"),
              fit: BoxFit.cover)
            ),
            child: SingleChildScrollView(
              child: Column(children: [
                Container(
                  width: 300,
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(color: Color(0xfffff3c2),
                  borderRadius: BorderRadius.circular(5), boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), blurRadius: 8
                    ),
                  ],
                  
                  ),
                  child: Text("Messages and calls are end to end encrypted, No one outside of this chat can read or listen. Tap to learn more",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15),),
                ),
                ChatSample(),
                ChatSample(),
                ChatSample(),
                ChatSample(),
                ChatSample(),
                ChatSample(),
                ChatSample(),
              ],)
            ),
          ),
          bottomSheet: ChatBottomBar(),
    );
  }
}
