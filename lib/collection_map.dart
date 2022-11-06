import 'dart:math';
import 'package:flutter/material.dart';
import 'package:testapp/widgets/kotak_warna.dart';

class CollectionMap extends StatelessWidget {
  CollectionMap({Key? key}) : super(key: key);

  List<Map<String, dynamic>> data = List.generate(
      20,
      (index) => {
            'text': 'Kotak ${index + 1}',
            'color': Color.fromARGB(
              255,
              200 + Random().nextInt(256),
              200 + Random().nextInt(256),
              200 + Random().nextInt(256),
            ),
          });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Collection Map'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...data
                .map((e) => KotakWarna(text: e['text'], color: e['color']))
                .toList(),
          ],
        ),
      ),
    );
  }
}
