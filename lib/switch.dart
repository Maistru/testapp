import 'package:flutter/material.dart';

class Switchwid extends StatefulWidget {
  const Switchwid({Key? key}) : super(key: key);

  @override
  State<Switchwid> createState() => _SwitchwidState();
}

class _SwitchwidState extends State<Switchwid> {
  late bool nutify = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        backgroundColor: Colors.greenAccent,
        
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'هل تريد تشغيل الإشعارات',
                  style: TextStyle(fontSize: 15.0),
                ),
                Switch(
                  inactiveThumbColor: Colors.greenAccent,
                //  activeTrackColor: Colors.greenAccent,
                 activeColor: Colors.greenAccent,
                    value: nutify,
                    onChanged: (val) {
                      setState(() {
                        nutify = val;
                      });
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
