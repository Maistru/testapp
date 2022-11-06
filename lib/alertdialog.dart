import 'package:flutter/material.dart';

class Alertdiawid extends StatefulWidget {
  const Alertdiawid({Key? key}) : super(key: key);

  @override
  State<Alertdiawid> createState() => _AlertdiawidState();
}

class _AlertdiawidState extends State<Alertdiawid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return  AlertDialog(
                      contentPadding: const EdgeInsets.all(30.0),
                      content: const Text('How Are You'),
                      title: const Text('Title'),

                      actions: [
                      TextButton(
                        onPressed: (){
                          Navigator.of(context).pop();
                          print('cancel');
                        },
                         child: const Text('Cancel')),

                         TextButton(
                        onPressed: (){
                          Navigator.of(context).pop();
                          print('OK');
                        },
                         child: const Text('OK')),
                      ],
                    );
                  });
            },
            child: const Text('Show Alert')),
      ),
    );
  }
}
