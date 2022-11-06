import 'package:flutter/material.dart';

class SnackbarWid extends StatefulWidget {
  const SnackbarWid({Key? key}) : super(key: key);

  @override
  State<SnackbarWid> createState() => _SnackbarWidState();
}

class _SnackbarWidState extends State<SnackbarWid> {
  GlobalKey<ScaffoldState> snackbarwid = GlobalKey<ScaffoldState>() ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          key: snackbarwid,
          onPressed: (){
            setState(() {
              var snackbar = SnackBar(content: Text('How Are You'),);
              // snackbarwid.currentState.showSnackBar(snackbar);
            });
        }, child: const Text('SnackBar')),
      ),
    );
    
  }
}