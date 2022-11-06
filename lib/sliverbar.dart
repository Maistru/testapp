import 'package:flutter/material.dart';

class SliverWid extends StatefulWidget {
  const SliverWid({Key? key}) : super(key: key);

  @override
  State<SliverWid> createState() => _SliverWidState();
}

class _SliverWidState extends State<SliverWid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],

      // floatingActionButton: Icon(Icons.settings),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: Icon(Icons.menu),
            title: Text('S L I V E R A P P A R'),
            centerTitle: true,
            backgroundColor: Colors.deepPurple,
            expandedHeight: 250,
            floating: false,
            pinned: true,
            
            actions: [
              Container(
                margin: EdgeInsets.only(right: 17, top: 10),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.deepPurpleAccent,
                ),
                child: Icon(Icons.settings),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                // width: 150,
                color: Colors.pinkAccent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 350,
                      // color: Colors.transparent,
                      child: TextFormField(
                        cursorColor: Colors.white,
                        textInputAction: TextInputAction.search,
                        keyboardType: TextInputType.text,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Search',
                          hintStyle: TextStyle(color: Colors.white),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.pink),
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blueAccent,
              ),
              margin: EdgeInsets.all(20),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
             
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blueAccent,
              ),
              margin: EdgeInsets.all(20),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
             
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blueAccent,
              ),
              margin: EdgeInsets.all(20),
            ),
          ),
        ],
      ),
    );
  }
}
