import 'package:flutter/material.dart';

class PageViewThree extends StatefulWidget {
  const PageViewThree({Key? key}) : super(key: key);

  @override
  State<PageViewThree> createState() => _PageViewThreeState();
}

class _PageViewThreeState extends State<PageViewThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.pink,
      ),
    );
    
  }
}