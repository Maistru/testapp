import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  const CheckBox({Key? key}) : super(key: key);

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
 bool? indo = false;
  bool? usa = false ;
  bool? sa  = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20.0),
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Choose Country",
              style: TextStyle(fontSize: 20.0),
            ),
            Row(
              children: [
                const Text("INDONESIA"),
                Checkbox(
                  
                    value: indo,
                    onChanged: (val) {
                      setState(
                        () {
                          indo = val;
                        },
                      );
                    }),
              ],
            ),
            Row(
              children: [
                const Text("USA"),
                Checkbox(
                    value: usa,
                    onChanged: (val) {
                      setState(
                        () {
                          usa = val;
                        },
                      );
                    }),
              ],
            ),
             Row(
              children: [
                const Text("SAUDI"),
                Checkbox(
                    value: sa,
                    onChanged: (val) {
                      setState(
                        () {
                          sa = val;
                        },
                      );
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
