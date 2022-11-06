import 'package:flutter/material.dart';

class ShowBottmSheet extends StatelessWidget {
  const ShowBottmSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              isDismissible: false,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              context: context,
              builder: (context) => Container(
                padding: const EdgeInsets.all(10),
                height: 300,
                child: ListView(
                  children: [
                    const ListTile(
                      leading: Icon(Icons.photo),
                      title: Text('Photo'),
                    ),
                    const ListTile(
                      leading: Icon(Icons.music_note),
                      title: Text('Music'),
                    ),
                    const ListTile(
                      leading: Icon(Icons.video_collection),
                      title: Text('Video'),
                    ),
                    const ListTile(
                      leading: Icon(Icons.share),
                      title: Text('Share'),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      leading: const Icon(Icons.cancel_presentation_rounded),
                      title: const Text('Cancel'),
                    ),
                  ],
                ),
              ),
            );
          },
          child: const Text('Click Show Bottom Sheet'),
        ),
      ),
    );
  }
}
