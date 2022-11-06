import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MyHttpPost extends StatefulWidget {
  const MyHttpPost({Key? key}) : super(key: key);

  @override
  State<MyHttpPost> createState() => _MyHttpPostState();
}

class _MyHttpPostState extends State<MyHttpPost> {
  TextEditingController nameC = TextEditingController();
  TextEditingController jobC = TextEditingController();
  late String postData = 'not data';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Http Post'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          TextFormField(
            controller: nameC,
            keyboardType: TextInputType.text,
            autocorrect: false,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: jobC,
            keyboardType: TextInputType.text,
            autocorrect: false,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () async {
              var res = await http.post(
                Uri.parse('https://reqres.in/api/users'),
                body: {"name": nameC.text, "job": jobC.text},
              );
              var resbody = jsonDecode(res.body);
              postData = '${resbody['name']} - ${resbody['job']}' ;
              
              setState(() {});
            },
            child: const Text('SUBMIT'),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(postData),
          
        ],
      ),
    );
  }
}
