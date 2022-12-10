// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CallsWidget extends StatelessWidget {
  const CallsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(children: [
          for (int i = 1; i < 5; i++)
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Row(children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(
                    "profile$i.jpg",
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Coder",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.call_received,
                                color: Colors.red,
                                size: 19,
                              ),
                              Text(
                                "(1) Today, 10.30",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black54),
                              )
                            ],
                          )
                        ])),
                Spacer(),
                Container(
                  child: Icon(
                    Icons.call_sharp,
                    color: Color(0xff075e55),
                  ),
                )
              ]),
            ),
            for (int i = 5; i < 9; i++)
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Row(children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(
                    "profile$i.jpg",
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Programmer",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.call_made,
                                color: Color(0xff075e55),
                                size: 19,
                              ),
                              Text(
                                "(2) Today, 11.30",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black54),
                              )
                            ],
                          )
                        ])),
                Spacer(),
                Container(
                  child: Icon(
                    CupertinoIcons.videocam_fill,
                    color: Color(0xff075e55),
                    size: 29,
                  ),
                )
              ]),
            )
        ]),
      ),
    );
  }
}
