import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:testapp/model/user.dart';

class FutureBuilderHttp extends StatelessWidget {
//  const FutureBuilderHttp({Key? key}) : super(key: key);
  List<UserModel> allUser = [];
  Future getData() async {
    try {
      var res = await http.get(
        Uri.parse('https://reqres.in/api/users?page=1'),
      );

      if (res.statusCode == 200) {
        List resbody = jsonDecode(res.body)['data'];
        resbody.forEach((json) {
          allUser.add(UserModel.fromJson(json));
            
          
        });
      }
    } catch (e) {
      return 'Error ${e}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Future Builder'),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: getData(),
        initialData: [],
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.blueAccent,
              ),
            );
          } else {
            if (allUser.length == 0) {
              return const Center(
                child: Text('Not Data'),
              );
            }
            return ListView.builder(
              itemCount: allUser.length,
              itemBuilder: (context, i) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(allUser[i].avatar),
                  ),
                  title: Text("${allUser[i].firstName}" '\-' "${allUser[i].lastName}"),
                  subtitle: Text(allUser[i].email),
                );
              },
            );
          }
        },
      ),
    );
  }
}
