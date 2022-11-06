import 'package:flutter/material.dart';

import 'page_view/page_viewone.dart';
import 'page_view/page_viewthree.dart';
import 'page_view/page_viewtoe.dart';

class PageViewWid extends StatefulWidget {
  const PageViewWid({Key? key}) : super(key: key);

  @override
  State<PageViewWid> createState() => _PageViewWidState();
}

class _PageViewWidState extends State<PageViewWid> {

final pageviewcont = PageController();

GlobalKey<ScaffoldState> pageViewkye = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageviewcont,
        scrollDirection: Axis.vertical,
        // padEnds: true,
        // pageSnapping: true,
        // allowImplicitScrolling: false,
        key: pageViewkye,
        children: const [
          PageViewOne(),
          PageViewTow(),
          PageViewThree(),
        ],

      ),
    );
    
  }
}