import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WhatsUp extends StatelessWidget {
  const WhatsUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future logout() async {
      SharedPreferences logout = await SharedPreferences.getInstance();
      logout.remove('token');
      Navigator.of(context).popAndPushNamed('loginTwo');
    }

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          centerTitle: true,
          title: const Text('WHATS UP'),
          actions: [
            IconButton(
                onPressed: () {
                  logout();
                },
                icon: const Icon(Icons.logout)),
          ],
          bottom: const TabBar(indicatorColor: Colors.greenAccent, tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: 'Chats',
            ),
            Tab(
              text: 'Status',
            ),
            Tab(
              text: 'Calls',
            ),
          ]),
        ),
        body: const TabBarView(children: [
          Center(
            child: Text('Camera'),
          ),
          Center(
            child: Text('Chats'),
          ),
          Center(
            child: Text('Status'),
          ),
          Center(
            child: Text('Calls'),
          ),
        ]),
      ),
    );
  }
}
