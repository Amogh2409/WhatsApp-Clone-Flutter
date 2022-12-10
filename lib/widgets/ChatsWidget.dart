// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(
          children: [
            for (int i = 1; i < 11; i++)
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "chatPage");
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 12),
                  child: Container(
                      child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                          "profile$i.jpg",
                          height: 65,
                          width: 65,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Flutter Coder",
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Hey!!, I am Amogh Saxena",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            )
                          ],
                        ),
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Text(
                            "10:00",
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff0fce5e),
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 27,
                            height: 27,
                            decoration: BoxDecoration(
                              color: Color(0xff0fce5e),
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Text(
                              "2",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      )
                    ],
                  )),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
