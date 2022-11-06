import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MyHttpGet extends StatefulWidget {
  const MyHttpGet({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHttpGet> createState() => _MyHttpState();
}

class _MyHttpState extends State<MyHttpGet> {
  // @override
  // void initState() {
  //   id = '';
  //   email = '';
  //   firstName = '';
  //   avatar = '';
  //   super.initState();
  // }

  late String id = '';
  late String email = '';
  late String firstName = '';
  late String avatar = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Http Get'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('id : $id'),
            const SizedBox(
              height: 10,
            ),
            Text('email : $email'),
            const SizedBox(
              height: 10,
            ),
            Text('firs name : $firstName'),
            const SizedBox(
              height: 10,
            ),
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage('$avatar'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () async {
                var res = await http.get(
                  Uri.parse('https://reqres.in/api/users/7'),
                );
                if (res.statusCode == 200) {
                  var resbody = jsonDecode(res.body);
                  id = resbody['data']['id'].toString();
                  email = resbody['data']['email'].toString();
                  firstName = resbody['data']['first_name'].toString();
                  avatar = resbody['data']['avatar'].toString();
                }
                setState(() {});
              },
              child: const Text('GET DATA'),
            ),
          ],
        ),
      ),
    );
  }
}
