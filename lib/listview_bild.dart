import 'package:flutter/material.dart';

class ListVieWid extends StatefulWidget {
  const ListVieWid({Key? key}) : super(key: key);

  @override
  State<ListVieWid> createState() => _ListVieWidState();
}

class _ListVieWidState extends State<ListVieWid> {
  List info = [
    {'name': "ahmad", "age": '27', 'price': '3000'},
    {'name': "ali", "age": '25', 'price': '4000'},
    {'name': "muhammad", "age": '30', 'price': '5000'},
    {'name': "muhammad", "age": '30', 'price': '5000'},
    {'name': "muhammad", "age": '30', 'price': '5000'},
    {'name': "muhammad", "age": '30', 'price': '5000'},
    {'name': "muhammad", "age": '30', 'price': '5000'},
    {'name': "muhammad", "age": '30', 'price': '5000'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        actions: const [
          Icon(Icons.search),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(10.0),
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return const Divider(
              color: Colors.white,
              height: 10,
            );
          },
          itemCount: info.length,
          itemBuilder: ((context, i) {
            return Card(
             shadowColor: Colors.black,
              borderOnForeground: true,
              elevation: 10.0,
              // clipBehavior: Clip.hardEdge,

              shape: RoundedRectangleBorder(
                side: const BorderSide(color: Colors.blue,width: 2.0),
                borderRadius: BorderRadius.circular(10.0),
                
              ),

              
              child: ListTile(
                minVerticalPadding: 15.0,
                isThreeLine: true,
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(
                //     10.0,
                //   ),
                //   side: const BorderSide(
                //     color: Colors.blue,
                //     width: 1.5,
                //   ),
                // ),
                leading: const CircleAvatar(
                  backgroundImage: AssetImage('images/person.jpg'),
                  radius: 20,
                ),
                title: Text('${info[i]['name']}'),
                subtitle: Text('${info[i]['age']}'),
                trailing: Text('price: ${info[i]['price']}'),
              ),
            );
          }),
        ),
      ),
    );
  }
}
