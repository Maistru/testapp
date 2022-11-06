import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TwoListView extends StatelessWidget {
  const TwoListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future logout() async {
      SharedPreferences loginOut = await SharedPreferences.getInstance();
      loginOut.remove('token');
      Navigator.of(context).pop();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tow List View'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 3),
            child: IconButton(
              onPressed: () {
                logout();
              },
              icon: Icon(Icons.cancel),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 80,
            color: Colors.transparent,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) => Container(
                width: 60,
                margin: const EdgeInsets.all(8),
                color: (index % 2 == 0) ? Colors.blue : Colors.greenAccent,
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, i) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 150,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://picsum.photos/id/${870 + i}/200/300'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Text('PHOTO ${i + 1}'),
                          )
                        ],
                      ),
                    ),
                separatorBuilder: (context, i) => const Divider(
                      height: 0.0,
                    ),
                itemCount: 10),
          ),
        ],
      ),
    );
  }
}
