import 'dart:math';
import 'package:flutter/material.dart';
import 'package:testapp/widgets/kotak_warna.dart';

class ListViewExtract extends StatelessWidget {
  const ListViewExtract({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View Color'),
        centerTitle: true,
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => const Divider(),
        itemCount: 20,
        itemBuilder: (context, index) => KotakWarna(
          text: 'Kotak ${index + 1}',
          color: Color.fromARGB(
            255,
            150 + Random().nextInt(200),
            150 + Random().nextInt(200),
            150 + Random().nextInt(200),
          ),
        ),
      ),
    );
  }
}
