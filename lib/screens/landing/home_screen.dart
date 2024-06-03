// import 'package:athang_expense_tracker/base/style/text_styles.dart';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:realprojectflutter/HelpingComponents/MoneySummary.dart';
import 'package:realprojectflutter/HelpingComponents/RecentTranscation.dart';
import 'package:realprojectflutter/HelpingComponents/User_Profile.dart';
import 'package:realprojectflutter/HelpingComponents/accountSummary.dart';
import 'package:realprojectflutter/base/text_styles.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../splash_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<void> logoutUser() async {
    print('inside');
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('_TOKEN', '');
    print('inside');
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (_) => SplashScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFFB7549),
          title: Padding(
            padding: const EdgeInsets.only(bottom: 9, left: 20),
            child: Image.asset(
              'assets/Logo.png',
              width: 100,
              height: 100,
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              tooltip: 'Comment Icon',
              onPressed: () {},
            ), //IconButton
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => UserProfile()));
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 50),
                child: CircleAvatar(
                  radius: 18,
                  child: ClipOval(child: Image.asset("assets/teeth.jpg")),
                ),
              ),
            )
          ], //<Widget>[]
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Accountsummary(), Moneysummary(), Recenttranscation()],
          ),
        ));
  }
}
