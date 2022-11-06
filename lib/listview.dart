import 'package:flutter/material.dart';

class ListviewWid extends StatefulWidget {
  const ListviewWid({Key? key}) : super(key: key);

  @override
  State<ListviewWid> createState() => _ListviewWidState();
}

class _ListviewWidState extends State<ListviewWid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        // width: double.infinity,
        child: ListView(
          // scrollDirection: Axis.horizontal,
          padding: EdgeInsets.all(20),
          physics: BouncingScrollPhysics(),
          // physics: ClampingScrollPhysics(),
          // physics: NeverScrollableScrollPhysics(),
          // shrinkWrap: true,
          children: [
            Container(
              height: 300,
              width: 200,
              color: Colors.red,
            ),
            Container(
              height: 300,
              width: 200,
              color: Colors.blue,
            ),
            Container(
              height: 300,
              width: 200,
              color: Colors.green,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                children: [
                  Container(
                    height: 300,
                    width: 200,
                    color: Colors.amber,
                  ),
                  Container(
                    height: 300,
                    width: 200,
                    color: Colors.black,
                  ),
                  Container(
                    height: 300,
                    width: 200,
                    color: Colors.brown,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
