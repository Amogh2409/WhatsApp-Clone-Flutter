// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15 , vertical: 5),
          child: Column(children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              child: Row(children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset("profile1.jpg",
                  height: 65,
                  width: 65,
                  fit: BoxFit.cover,)
                ),
                 Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Pro Coder",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8,),
                          Text("Hey there, I am using Whatsapp")
                          ])),
              ]),
            ),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 6.0),
                child: Icon(Icons.key),
              ),
              title: Text("Account", style: TextStyle(fontSize: 17),),
              subtitle: Text("Privacy, security, change number", style: TextStyle(fontSize: 15),),
            ),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Icon(Icons.message),
              ),
              title: Text("Chats", style: TextStyle(fontSize: 17),),
              subtitle: Text("Theme, wallpapers, chat history", style: TextStyle(fontSize: 15),),
            ),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Icon(Icons.notifications),
              ),
              title: Text("Notifications", style: TextStyle(fontSize: 17),),
              subtitle: Text("Message, group & call tones", style: TextStyle(fontSize: 15),),
            ),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Icon(Icons.circle_outlined),
              ),
              title: Text("Storage and Data", style: TextStyle(fontSize: 17),),
              subtitle: Text("Network usage, auto download", style: TextStyle(fontSize: 15),),
            ),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Icon(Icons.help_outline_outlined),
              ),
              title: Text("Help", style: TextStyle(fontSize: 17),),
              subtitle: Text("Help centre, contact us, privacy policy", style: TextStyle(fontSize: 15),),
            ),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Icon(Icons.people_alt),
              ),
              title: Text("Invite a Friend", style: TextStyle(fontSize: 17),),
              
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Column(children: [
                Text("from", style: TextStyle(fontSize: 16),),
                Text("Facebook", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),)
              ],),
            )
          ]),
        ),
      ),
    );
  }
}
