import 'package:flutter/material.dart';

class DropBotton extends StatefulWidget {
  const DropBotton({Key? key}) : super(key: key);

  @override
  State<DropBotton> createState() => _DropBottonState();
}

class _DropBottonState extends State<DropBotton> {
   String selected = "indo";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0),
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          
          color: Colors.grey,
          child: DropdownButton(
            isExpanded: true,
              hint: const Text('Country'),
              value: selected,
              items: ['indo', 'usa', 'sa', 'eg', 'uae']
                  .map(
                    (e) => DropdownMenuItem(
                      child: Text('Country $e'),
                      value: e,
                    ),
                  )
                  .toList(),
              onChanged: (value) {
                setState(() {
                  selected = value.toString();
                });
              }),
        ),
      ),
    );
  }
}
