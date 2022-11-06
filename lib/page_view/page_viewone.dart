import 'package:flutter/material.dart';

class PageViewOne extends StatefulWidget {
  const PageViewOne({Key? key}) : super(key: key);

  @override
  State<PageViewOne> createState() => _PageViewOneState();
}

class _PageViewOneState extends State<PageViewOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.deepOrange,
        child: Center(
          child: Text(
            'Tik Tok',
            style: TextStyle(color: Colors.white, fontSize: 50, inherit: true),
          ),
        ),
      ),
    );
  }
}
