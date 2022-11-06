import 'package:flutter/material.dart';

class NavMessege extends StatefulWidget {
  const NavMessege({Key? key}) : super(key: key);

  @override
  State<NavMessege> createState() => _NavMessegeState();
}

class _NavMessegeState extends State<NavMessege> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
      child: Text(
        'Messege',
        style: TextStyle(
          fontSize: 50,
        ),
      ),
    ),
    );
  }
}