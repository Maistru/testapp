import 'package:flutter/material.dart';

class TextFieldPassWid extends StatefulWidget {
  final String? labelText;
  
  const TextFieldPassWid({Key? key, required this.labelText}) : super(key: key);

  @override
  State<TextFieldPassWid> createState() => _TextFieldPassWidState();
}

class _TextFieldPassWidState extends State<TextFieldPassWid> {
  bool hidden = true;
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        controller: controller,
        obscureText: hidden,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderSide: BorderSide(width: 10.0),
          ),
          labelText: widget.labelText,
          labelStyle: const TextStyle(fontSize: 12),
          suffixIcon: IconButton(
              onPressed: () {
                if (hidden == true) {
                  hidden = false;
                } else {
                  hidden = true;
                }
                setState(() {});
              },
              icon: const Icon(Icons.remove_red_eye)),
          prefixIcon: const Icon(Icons.lock),
        ),
      ),
    );
  }
}
