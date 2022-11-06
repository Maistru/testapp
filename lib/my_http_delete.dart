import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MyHttpDelet extends StatefulWidget {
  const MyHttpDelet({Key? key}) : super(key: key);

  @override
  State<MyHttpDelet> createState() => _MyHttpDeletState();
}

class _MyHttpDeletState extends State<MyHttpDelet> {
  late String firstName = '';
  late String email = '';
  late String avatar = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Http Delete'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () async {
              var res = await http.get(
                Uri.parse('https://reqres.in/api/users/7'),
              );
              var resbody = jsonDecode(res.body);
              if (res.statusCode == 200) {
                print(res.statusCode);
                setState(() { 
                  firstName = resbody['data']['first_name'].toString();
                  email = resbody['data']['email'].toString();
                  avatar = resbody['data']['avatar'].toString();
                });
              }
            },
            icon: const Icon(Icons.get_app),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(child: Text(firstName)),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(child: Text(email)),
          ),
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.white,
            backgroundImage: NetworkImage(avatar),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              onPressed: () async {
                var res = await http.delete(
                  Uri.parse('https://reqres.in/api/users/3'),
                );
                var resbody = jsonDecode(res.body);
                if (res.statusCode == 204) {
                   print(res.statusCode);
                  setState(() {
                    firstName = resbody['data']['id'].toString();
                    email = resbody['data']['email'].toString();
                    avatar = resbody['data']['avatar'].toString();
                  });
                }
              },
              child: const Text('DELETE'),
            ),
          ),
        ],
      ),
    );
  }
}
