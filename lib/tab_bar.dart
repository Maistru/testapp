import 'package:flutter/material.dart';

import 'tabs.dart/tab_account.dart';
import 'tabs.dart/tab_messegs.dart';
import 'tabs.dart/tab_home.dart';

class TabBarWid extends StatefulWidget {
  const TabBarWid({Key? key}) : super(key: key);

  @override
  State<TabBarWid> createState() => _TabBarWidState();
}

class _TabBarWidState extends State<TabBarWid> {
  // int tabbarcont = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      // initialIndex: tabbarcont,
      animationDuration: const Duration(seconds: 1),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('T A B B A R'),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
          // toolbarHeight: 100,
        ),
        body: Column(
          children: const [
            TabBar(
              // isScrollable: false,
              // indicatorColor: Colors.red,
              // indicatorPadding: EdgeInsets.all(5),
              // labelColor: Colors.black,
              // padding: EdgeInsets.all(5),

              tabs: [
                Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.message,
                    color: Colors.black,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                // controller: ,
                children: [
                  TabHome(),
                  TabMessegs(),
                  TabAccont(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
