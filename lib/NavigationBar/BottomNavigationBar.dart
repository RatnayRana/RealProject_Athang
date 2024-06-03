import 'package:flutter/material.dart';
import 'package:realprojectflutter/HelpingComponents/Transaxtion_Screen.dart';
import 'package:realprojectflutter/HelpingComponents/User_Profile.dart';
import 'package:realprojectflutter/screens/Faq.dart';
import 'package:realprojectflutter/screens/landing/home_screen.dart';

class Bottomnavigationbar extends StatefulWidget {
  const Bottomnavigationbar({super.key});

  @override
  State<Bottomnavigationbar> createState() => _BottomnavigationbarState();
}

class _BottomnavigationbarState extends State<Bottomnavigationbar> {
  int _selectIndex = 0;
  List<String> titles = ['Home', 'Account'];
  List<Widget> Screens = [HomeScreen(), UserProfile(), Faq()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Screens[_selectIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectIndex,
          onTap: (val) {
            setState(() {
              _selectIndex = val;
            });
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Accounts'),
            BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Faq'),
          ],
        ));
  }
}
