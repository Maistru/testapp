import 'package:flutter/material.dart';

class CheckListTile extends StatefulWidget {
  const CheckListTile({Key? key}) : super(key: key);

  @override
  State<CheckListTile> createState() => _CheckListTileState();
}

class _CheckListTileState extends State<CheckListTile> {
  bool? indonesia = false;
  bool? saudi = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CheckListTiletile'),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 20.0),
        child: Column(
          children: [
            const Text(
              'Choose Country',
              style: TextStyle(fontSize: 20.0),
            ),
            CheckboxListTile(
                title: const Text('Indonesia'),
                subtitle: const Text('Jakarta'),
                secondary: const Icon(Icons.flag),
                isThreeLine: true,
                value: indonesia,
                onChanged: (val) {
                  setState(() {
                    indonesia = val;
                  });
                }),
            CheckboxListTile(
                title: const Text('Saudi'),
                subtitle: const Text('Makkah'),
                secondary: const Icon(Icons.flag),
                isThreeLine: true,
                value: saudi,
                onChanged: (val) {
                  setState(() {
                    saudi = val;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
