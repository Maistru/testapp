import 'package:flutter/material.dart';

class ViewPhoto extends StatelessWidget {
  const ViewPhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('View Photo'),
        centerTitle: true,
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => const Divider(),
        padding: const EdgeInsets.all(20),
        itemCount: 5,
        itemBuilder: (context, i) => Container(
          padding: const EdgeInsets.all(25),
          width: 300,
          height: 150,
          alignment: Alignment.bottomLeft,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image:
                    NetworkImage('https://picsum.photos/id/${77 + i}/200/300'),
                fit: BoxFit.cover),
          ),
          child: Text(
            'Hallo ${i + 1}',
            style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
                letterSpacing: 2.5),
          ),
        ),
      ),
    );
  }
}
