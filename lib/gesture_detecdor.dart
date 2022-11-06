import 'package:flutter/material.dart';

class GestureWid extends StatefulWidget {
  const GestureWid({Key? key}) : super(key: key);

  @override
  State<GestureWid> createState() => _GestureWidState();
}

class _GestureWidState extends State<GestureWid> {
  int _counter = 0;

  void counterChange() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     onTap: counterChange,
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Counter ${_counter}',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              GestureDetector(
                onTap: (() {
                  setState(
                    () {
                      _counter++;
                    },
                  );
                }),
                child: Container(
                  padding: EdgeInsets.all(15),
                  color: Colors.cyan,
                  child: Text(
                    'Change Gesture',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
