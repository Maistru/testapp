import 'package:flutter/material.dart';

class KotakWarna extends StatelessWidget {
  final String text;
  final Color color;
  const KotakWarna({Key? key, required this.text, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: color,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}
