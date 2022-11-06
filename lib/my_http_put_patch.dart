import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MyHttpPutPatch extends StatefulWidget {
  const MyHttpPutPatch({Key? key}) : super(key: key);

  @override
  State<MyHttpPutPatch> createState() => _MyHttpPostState();
}

class _MyHttpPostState extends State<MyHttpPutPatch> {
  TextEditingController nameC = TextEditingController();
  TextEditingController jobC = TextEditingController();
  late String putData = 'not data';
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
              var res = await http.patch(
                Uri.parse('https://reqres.in/api/users/7'),
                body: {"name": nameC.text, "job": jobC.text},
              );
              var resbody = jsonDecode(res.body);
              putData = '${resbody['name']} - ${resbody['job']}' ;
              
              setState(() {});
            },
            child: const Text('SUBMIT'),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(putData),
          
        ],
      ),
    );
  }
}
