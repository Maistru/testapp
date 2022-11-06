import 'package:flutter/material.dart';

class GirdView2Color extends StatelessWidget {
  const GirdView2Color({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View 2 Colors'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: 51,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 8, mainAxisSpacing: 8),
        itemBuilder: (context, index) {
          if (index % 2 == 0) {
            return Container(
              alignment: Alignment.center,
              color: Colors.blueAccent,
              child: const Text(
                'Hallo',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            );
          } else {
            return Container(
              alignment: Alignment.center,
              color: Colors.cyan,
              child: const Text(
                'Hallo',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            );
          }
        },
      ),
    );
  }
}
