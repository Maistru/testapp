import 'package:flutter/material.dart';

class TabMessegs extends StatefulWidget {
  const TabMessegs({Key? key}) : super(key: key);

  @override
  State<TabMessegs> createState() => _TabMessegsState();
}

class _TabMessegsState extends State<TabMessegs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.pink,
        child: Center(child: Text('Messege',style: TextStyle(fontSize: 20,color: Colors.white),)),
      ),
    );
  }
}
