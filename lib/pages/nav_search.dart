import 'package:flutter/material.dart';

class NavSearch extends StatefulWidget {
  const NavSearch({Key? key}) : super(key: key);

  @override
  State<NavSearch> createState() => _NavSearchState();
}

class _NavSearchState extends State<NavSearch> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Search',
          style: TextStyle(
            fontSize: 50,
          ),
        ),
      ),
    );
  }
}
