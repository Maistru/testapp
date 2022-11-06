import 'package:flutter/material.dart';

class SwitchlistWid extends StatefulWidget {
  const SwitchlistWid({Key? key}) : super(key: key);

  @override
  State<SwitchlistWid> createState() => _SwitchlistWidState();
}

class _SwitchlistWidState extends State<SwitchlistWid> {
  bool notefy = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SwitchListTile(
                title: const Text('هل تريد تشغيل الإشعارات'),
                subtitle: const Text('الرجاء الإختيار'),
                secondary: const Icon(Icons.notifications),
                isThreeLine: true,
                // controlAffinity: ListTileControlAffinity.leading,
                contentPadding: const EdgeInsets.symmetric(horizontal: 50),
                value: notefy,
                onChanged: (val) {
                  setState(() {
                    notefy = val;
                  });
                })
          ],
        ),
      ),
    );
  }
}
