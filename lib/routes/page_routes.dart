import 'package:flutter/material.dart';
import 'package:flutter_task/screens/first_page.dart';
//import 'package:flutter_task/screens/full_screen.dart';
import 'package:flutter_task/screens/post_screen.dart';

class AppRoute {
  static Map<String, WidgetBuilder> routes = {
    FirstPage.id: (context) => FirstPage(),
    //FullProfileScreen.id: (context) => FullProfileScreen(),
    PostScreen.id: (context) => PostScreen(),
  };
}
