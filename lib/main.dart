import 'package:animations_app/home_page.dart';
import 'package:flutter/material.dart';

import 'home_page_2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomePage2(),
    );
  }
}
