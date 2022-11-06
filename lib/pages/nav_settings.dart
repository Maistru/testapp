import 'package:flutter/material.dart';

class NavSettings extends StatefulWidget {
  const NavSettings({Key? key}) : super(key: key);

  @override
  State<NavSettings> createState() => _NavSettingsState();
}

class _NavSettingsState extends State<NavSettings> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
      child: Text(
        'Settings',
        style: TextStyle(
          fontSize: 50,
        ),
      ),
    ),
    );
    
  }
}