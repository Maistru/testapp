import 'package:flutter/material.dart';

class TabHome extends StatefulWidget {
  const TabHome({Key? key}) : super(key: key);

  @override
  State<TabHome> createState() => _TabHomeState();
}

class _TabHomeState extends State<TabHome> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: Container(
        color: Colors.blueGrey,
        child: Center(child: Text('Home',style: TextStyle(fontSize: 20,color: Colors.white),)),
      ),
    );
    
  }
}