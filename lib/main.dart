import 'package:flutter/material.dart';
import 'package:listview_udemy/presentation/menu_list/menu_list_page.dart';
import 'package:listview_udemy/presentation/menu_page.dart';
import 'package:listview_udemy/presentation/profile/profile_page.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MenuPage(),
    );
  }
}
