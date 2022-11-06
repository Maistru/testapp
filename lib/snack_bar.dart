import 'package:flutter/material.dart';

class SnackBarTow extends StatelessWidget {
  const SnackBarTow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snack Bar Tow'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text('Delet Product'),
                margin: const EdgeInsets.all(20),
                behavior: SnackBarBehavior.floating,
                duration: const Duration(seconds: 2),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                action: SnackBarAction(onPressed: () {}, label: 'Cancel'),
              ),
            );
          },
          child: const Text('Click Snak Bar'),
        ),
      ),
    );
  }
}
