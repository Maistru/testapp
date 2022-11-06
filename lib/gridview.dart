import 'package:flutter/material.dart';

import 'widgets/stackwid.dart';

class GridVieWid extends StatefulWidget {
  const GridVieWid({Key? key}) : super(key: key);

  @override
  State<GridVieWid> createState() => _GridVieWidState();
}

class _GridVieWidState extends State<GridVieWid> {
  // List info = [
  //   {'name': "ahmad", "age": '27', 'price': '3000'},
  //   {'name': "ali", "age": '25', 'price': '4000'},
  //   {'name': "muhammad", "age": '30', 'price': '5000'},
  //   {'name': "muhammad", "age": '30', 'price': '5000'},
  //   {'name': "muhammad", "age": '30', 'price': '5000'},
  //   {'name': "muhammad", "age": '30', 'price': '5000'},
  //   {'name': "muhammad", "age": '30', 'price': '5000'},
  //   {'name': "muhammad", "age": '30', 'price': '5000'},
  //   {'name': "muhammad", "age": '30', 'price': '5000'},
  //   {'name': "muhammad", "age": '30', 'price': '5000'},
  //   {'name': "muhammad", "age": '30', 'price': '5000'},
  //   {'name': "muhammad", "age": '30', 'price': '5000'},
  //   {'name': "muhammad", "age": '30', 'price': '5000'},
  //   {'name': "muhammad", "age": '30', 'price': '5000'},
  //   {'name': "muhammad", "age": '30', 'price': '5000'}
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      //   toolbarHeight: 200,
      //   elevation: 0,
      //   leading: Icon(Icons.menu),
      //   actions: [
      //     // Icon(Icons.search),
      //     // SizedBox(
      //     //   width: 10,
      //     // ),
      //     // Column(
      //     //   mainAxisAlignment: MainAxisAlignment.center,
      //     //   children: [
      //     //     Container(
      //     //       width: 300,
      //     //       margin: const EdgeInsets.only(right: 20),
      //     //       decoration: BoxDecoration(
      //     //           border: Border.all(color: Colors.white,width: 20),
      //     //           borderRadius: BorderRadius.circular(10)),
      //     //       child: TextFormField(
      //     //         decoration: const InputDecoration(
      //     //           suffixIcon: Icon(
      //     //             Icons.search,
      //     //             color: Colors.white,
      //     //           ),
      //     //         ),
      //     //       ),
      //     //     ),
      //     //   ],
      //     // ),
      //   ],
      // ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: double.infinity,
            height: 200,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                      hintText: 'Search',
                      // label: Text('Search'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      focusColor: Colors.grey,

                      // filled: true,
                      // fillColor: Colors.transparent,

                      suffixIcon: const Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      contentPadding: const EdgeInsets.all(15),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'INFO NAME',
                  style: TextStyle(
                    // decorationStyle: TextDecorationStyle.solid,
                    textBaseline: TextBaseline.alphabetic,
                    inherit: true,
                  ),
                ),
                Icon(Icons.more_horiz),
              ],
            ),
          ),
         const StackWid(),
        ],
      ),
    );
  }
}
