// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/HomePage.dart';
import 'package:whatsapp/widgets/ChatPage.dart';

import 'package:whatsapp/widgets/SettingsPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(
            color: Color(0xff075E55),
          ),
          bottomSheetTheme: BottomSheetThemeData(
            backgroundColor: Colors.black.withOpacity(0),
          )),
      routes: {
        "/": (context) => SplashScreen(),
        "settingsPage": (context) => SettingsPage(),
        "chatPage": (context) => ChatPage(),
      },
    );
  }
}

class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(splash: Container(
      height: double.infinity,
      width: double.infinity,
      child: Column(children: [
        SizedBox(height: 180,),
        Image.asset("logo-2.png", width: 100, height: 
        150,),
        SizedBox(height: 200,),
        Text("From", style: TextStyle(fontSize: 15, color: Colors.black.withOpacity(0.7), letterSpacing: 2),),
        SizedBox(height: 12,),
        Text("Facebook", style: TextStyle(fontSize: 25, color: Colors.black.withOpacity(0.7), letterSpacing: 3),)
      ]),

    ),splashIconSize: 600,
    backgroundColor: Colors.white,
    duration: 1200,
     nextScreen: HomePage());
  }
}
