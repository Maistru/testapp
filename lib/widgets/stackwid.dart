import 'package:flutter/material.dart';

class StackWid extends StatefulWidget {
  const StackWid({Key? key}) : super(key: key);

  @override
  State<StackWid> createState() => _StackWidState();
}

class _StackWidState extends State<StackWid> {
  List info = [
    {'name': "ahmad", "age": '27', 'price': '3000'},
    {'name': "ali", "age": '25', 'price': '4000'},
    {'name': "muhammad", "age": '30', 'price': '5000'},
    {'name': "muhammad", "age": '30', 'price': '5000'},
    {'name': "muhammad", "age": '30', 'price': '5000'},
    {'name': "muhammad", "age": '30', 'price': '5000'},
    {'name': "muhammad", "age": '30', 'price': '5000'},
    {'name': "muhammad", "age": '30', 'price': '5000'},
    {'name': "muhammad", "age": '30', 'price': '5000'},
    {'name': "muhammad", "age": '30', 'price': '5000'},
    {'name': "muhammad", "age": '30', 'price': '5000'},
    {'name': "muhammad", "age": '30', 'price': '5000'},
    {'name': "muhammad", "age": '30', 'price': '5000'},
    {'name': "muhammad", "age": '30', 'price': '5000'},
    {'name': "muhammad", "age": '30', 'price': '5000'}
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 350,
        height: 300,
        child: GridView.builder(
          itemCount: info.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemBuilder: (context, i) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                // shape: BoxShape.circle,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade500,
                    offset: const Offset(4.0,4.0),
                    blurRadius: 5,
                    spreadRadius: 1.0,
                  ),
                  const BoxShadow(
                    color: Colors.white70,
                    offset: Offset(-4.0, -4.0),
                    blurRadius: 5,
                    spreadRadius: 1.0,
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 15,
                    top: 10,
                    child: Text('${info[i]['name']}'),
                  ),
                  const Positioned(
                    left: 10,
                    top: 35,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/person.jpg'),
                      radius: 20,
                    ),
                  ),
                   Positioned(
                    left: 15,
                    bottom: 10,
                    child: Text('price :${info[i]['price']}'),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
