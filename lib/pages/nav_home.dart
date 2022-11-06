import 'package:flutter/material.dart';

class NavHome extends StatefulWidget {
  const NavHome({Key? key}) : super(key: key);

  @override
  State<NavHome> createState() => _NavHomeState();
}

class _NavHomeState extends State<NavHome> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
      child: Text(
        'Hallo',
        style: TextStyle(
          fontSize: 50,
        ),
      ),
    ),
    );
    
  }
}