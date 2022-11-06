import 'package:flutter/material.dart';

class Radiowid extends StatefulWidget {
  const Radiowid({Key? key}) : super(key: key);

  @override
  State<Radiowid> createState() => _RadiowidState();
}

class _RadiowidState extends State<Radiowid> {
  String? country;
  String? car;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const Text(
              'Choose Country',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            Row(
              children: [
                const Text("Saudi"),
                Radio(
                  activeColor: Colors.green,
                    value: 'saudi',
                    groupValue: country,
                    onChanged: (val) {
                      setState(() {
                        country = val.toString();
                      });
                    }),
              ],
            ),
            Row(
              children: [
                const Text("Usa"),
                Radio(
                  activeColor: Colors.green,
                    value: 'usa',
                    groupValue: country,
                    onChanged: (val) {
                      setState(() {
                        country = val.toString();
                      });
                    }),
              ],
            ),
            const Text(
              'Car',
              style: TextStyle(fontSize: 20.0),
            ),
            Row(
              children: [
               const Text('BMW'),
                Radio(
                    value: 'bmw',
                    groupValue: car,
                    onChanged: (val) {
                      setState(() {
                        car = val.toString();
                      });
                    })
              ],
            ),
            Row(
              children: [
                const Text('Marcedes'),
                Radio(

                    value: 'mrc',
                    groupValue: car,
                    onChanged: (val) {
                      setState(() {
                        car = val.toString();
                      });
                    })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
