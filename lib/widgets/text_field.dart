import 'package:flutter/material.dart';

class NewWidgetField extends StatelessWidget {
  final String? labelText;
  final Icon? prefixIcon;
  IconButton? suffixIcon;
  bool obscureText = true;

  NewWidgetField(
      {Key? key,
      required this.labelText,
      required this.prefixIcon,
      this.suffixIcon,
      bool? obscureText})
      : super(
          key: key,
        );
  

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: TextFormField(
        obscureText: obscureText,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderSide: BorderSide(width: 10.0),
          ),
          labelText: labelText,
          labelStyle: const TextStyle(fontSize: 12),
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
        ),
      ),
    );
  }
}
