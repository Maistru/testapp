import 'package:flutter/material.dart';


import 'pages/nav_account.dart';
import 'pages/nav_home.dart';
import 'pages/nav_messege.dart';
import 'pages/nav_search.dart';
import 'pages/nav_settings.dart';

class BottomNavbarWid extends StatefulWidget {
  const BottomNavbarWid({Key? key}) : super(key: key);

  @override
  State<BottomNavbarWid> createState() => _BottomNavbarWidState();
}

class _BottomNavbarWidState extends State<BottomNavbarWid> {
  late int currentpage = 3;

  // void navBarcurrent (int i){
  //   setState(() {
  //     currentpage = i;
  //   });
  // }
  final List<Widget> page = const [
    NavHome(),
    NavMessege(),
    NavSettings(),
    NavAccount(),
    NavSearch(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: page[currentpage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentpage,
        onTap: (int i) {
          setState(() {
            currentpage = i;
          });
        },
        // backgroundColor: Colors.blueGrey,
        // selectedLabelStyle: TextStyle(color: Colors.white),
        // unselectedLabelStyle: TextStyle(color: Colors.white),
        // showSelectedLabels: true,
        // showUnselectedLabels: true,
        // fixedColor: Colors.greenAccent,
        elevation: 0,
        mouseCursor: MouseCursor.defer,
        // selectedItemColor: Colors.white,
        fixedColor: Colors.greenAccent,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Messege'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        ],
      ),
    );
  }
}
