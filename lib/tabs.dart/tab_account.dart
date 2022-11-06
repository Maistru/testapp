import 'package:flutter/material.dart';

class TabAccont extends StatefulWidget {
  const TabAccont({Key? key}) : super(key: key);

  @override
  State<TabAccont> createState() => _TabAccontState();
}

class _TabAccontState extends State<TabAccont> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.deepPurple,
        child: Center(child: Text('Account',style: TextStyle(fontSize: 20,color: Colors.white),)),
      ),
    );
  }
}
