import 'package:flutter/material.dart';
import 'package:testapp/collection_map.dart';
import 'package:testapp/extact_grid_view.dart';
import 'package:testapp/extract_widget.dart';
import 'package:testapp/faker_intl_packages.dart';
import 'package:testapp/future_builder._two.dart';
import 'package:testapp/grid_view_2color.dart';
import 'package:testapp/login_tow.dart';
import 'package:testapp/my_http_delete.dart';
import 'package:testapp/my_http_get.dart';
import 'package:testapp/my_http_post.dart';
import 'package:testapp/my_http_put_patch.dart';
import 'package:testapp/packges_dropdown_search.dart';
import 'package:testapp/radio.dart';
import 'package:testapp/show_bottm_sheet.dart';
import 'package:testapp/sign_up.dart';
import 'package:testapp/slider.dart';
import 'package:testapp/snack_bar.dart';
import 'package:testapp/two_list_view.dart';
import 'package:testapp/view_photo.dart';
import 'package:testapp/whatsup_tab_bar.dart';
import 'package:testapp/widgets/text_field.dart';
import 'alertdialog.dart';
import 'bottom_navbar.dart';
import 'checkbox.dart';
import 'checkboxlist.dart';
import 'dropbutton.dart';
import 'gesture_detecdor.dart';
import 'gridview.dart';
import 'listview.dart';
import 'listview_bild.dart';
import 'login.dart';
import 'pageview.dart';
import 'radiolisttile.dart';
import 'sliverbar.dart';
import 'snackbar.dart';
import 'switch.dart';
import 'switchlist.dart';
import 'tab_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const DropDownApi(),
      routes: {
        'signUp': (context) => const SignUp(),
        'login': (context) => const Login(),
        'slider': (context) => const Sliderone(),
        'dropbutton': (context) => const DropBotton(),
        'checkbox': (context) => const CheckBox(),
        'checkboxlist': (context) => const CheckListTile(),
        'radio': (context) => const Radiowid(),
        'radiolist': (context) => const Radiolistwid(),
        'switch': (context) => const Switchwid(),
        'switchlist': (context) => const SwitchlistWid(),
        'snackbar': (context) => const SnackbarWid(),
        'alertdialog': (context) => const Alertdiawid(),
        'listview': (context) => const ListviewWid(),
        'listviewbild': (context) => const ListVieWid(),
        'gridview': (context) => const GridVieWid(),
        'sliverbar': (context) => const SliverWid(),
        'gesture_detector': (context) => const GestureWid(),
        'bottomnavbar': (context) => const BottomNavbarWid(),
        'tapbar': (context) => const TabBarWid(),
        'pageview': (context) => const PageViewWid(),
        'twoListView': (context) => const TwoListView(),
        'whatsup': (context) => const WhatsUp(),
        'loginTwo': (context) => const LoginTow(),
      },
    );
  }
}
