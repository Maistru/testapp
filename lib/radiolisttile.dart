import 'package:flutter/material.dart';

class Radiolistwid extends StatefulWidget {
  const Radiolistwid({Key? key}) : super(key: key);

  @override
  State<Radiolistwid> createState() => _RadiolistwidState();
}

class _RadiolistwidState extends State<Radiolistwid> {
  String? country;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text(
              'Choose Country',
              style: TextStyle(fontSize: 20.0),
            ),
            RadioListTile(
                selected: country == 'saudi' ? true : false,
                secondary: const Icon(Icons.flag),
                isThreeLine: true,
                controlAffinity: ListTileControlAffinity.trailing,
                title: const Text('Saudi'),
                subtitle: const Text('Makkah'),
                value: 'saudi',
                groupValue: country,
                onChanged: (val) {
                  setState(() {
                    country = val.toString();
                  });
                }),
            RadioListTile(
                secondary: const Icon(Icons.flag),
                isThreeLine: true,
                title: const Text('Indonesia'),
                subtitle: const Text('Jakarta'),
                value: 'indo',
                groupValue: country,
                onChanged: (val) {
                  setState(() {
                    country = val.toString();
                  });
                }),
          ],
        ),
      ),
    );
  }
}
