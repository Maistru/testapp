import 'dart:math';

import 'package:flutter/material.dart';

class GridViewExtract extends StatelessWidget {
  const GridViewExtract({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View Color'),
        centerTitle: true,
      ),
      body: GridView.builder(
        itemCount: 55,
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          // childAspectRatio: (0.5),
        ),
        itemBuilder: (context, index) {
          return Container(
            color: Color.fromARGB(
              255,
              150 + Random().nextInt(200),
              150 + Random().nextInt(200),
              150 + Random().nextInt(200),
            ),
          );
        },
      ),
    );
  }
}
