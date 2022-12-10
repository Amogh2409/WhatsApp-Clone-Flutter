// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:custom_clippers/custom_clippers.dart';

class ChatSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 80),
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.receive),
            child: Container(
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, left: 25, right: 10),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Text(
                "Hey Coder, How are you?",
                style: TextStyle(fontSize: 17),
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20, left: 80, bottom: 15),
          alignment: Alignment.centerRight,
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.send),
            child: Container(
                  padding:
                      EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 20),
                  decoration: BoxDecoration(
                    color: Color(0xffe4fdca),
                  ),
                  child: Text(
                    "Hey Programmer, I am great. Thanks for asking and what about you?",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
          ),
        ),
      ],
    );
  }
}
