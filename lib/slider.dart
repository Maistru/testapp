import 'package:flutter/material.dart';

class Sliderone extends StatefulWidget {
  const Sliderone({Key? key}) : super(key: key);

  @override
  State<Sliderone> createState() => _SlideroneState();
}

class _SlideroneState extends State<Sliderone> {
  double sliderOna = 10.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Slider(
                label: 'Slider',

                // thumbColor: Colors.amber,
                max: 100,
                min: 0,
                value: sliderOna,
                onChanged: (value) {
                  setState(() {
                    sliderOna = value;
                  });
                }),
            
          ],

        ),
            
      ),
      
    );
  }
}
