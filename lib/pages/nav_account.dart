import 'package:flutter/material.dart';

class NavAccount extends StatefulWidget {
  const NavAccount({Key? key}) : super(key: key);

  @override
  State<NavAccount> createState() => _NavAccountState();
}

class _NavAccountState extends State<NavAccount> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  Center(
      child: Text(
        'Account',
        style: TextStyle(
          fontSize: 50,
        ),
      ),
    ),
    );
    
  }
}