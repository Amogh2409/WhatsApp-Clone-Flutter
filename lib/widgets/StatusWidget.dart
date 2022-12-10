// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class StatusWidget extends StatelessWidget {
  const StatusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Column(children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                child: Row(children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: Colors.grey, width: 3)),
                    padding: EdgeInsets.all(0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        "status1.jpg",
                        height: 55,
                        width: 55,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "My Status",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          "Today, 09:30 am",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: Icon(Icons.more_vert, color: Color(0xff075e55)),
                  )
                ]),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Recent Updates",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.black.withOpacity(0.6)),
                ),
              ),
              for (int i = 1; i < 3;i++)
                Container(
                  margin: EdgeInsets.symmetric(vertical: 12),
                  child: Row(children: [
                    Container(
                      padding: EdgeInsets.all(1.5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.blue, width: 3)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.asset(
                            "status$i.jpg",
                            height: 55,
                            width: 55,
                            fit: BoxFit.cover,
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "GeeksforGeeks",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Today, 2:00",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54),
                            )
                          ]),
                    )
                  ]),
                ),
                Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Viewed Updates",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.black.withOpacity(0.6)),
                ),
              ),
              for (int i = 3; i < 5;i++)
                Container(
                  margin: EdgeInsets.symmetric(vertical: 12),
                  child: Row(children: [
                    Container(
                      padding: EdgeInsets.all(1.5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.grey, width: 3)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.asset(
                            "status$i.jpg",
                            height: 55,
                            width: 55,
                            fit: BoxFit.cover,
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "GeeksforGeeks",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Today, 12:00",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54),
                            )
                          ]),
                    )
                  ]),
                )
            ])));
  }
}
