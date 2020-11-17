import 'package:flutter/material.dart';
import 'package:quotes/theme.dart';

import 'drawer.dart';
import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: mythemedata,
     home: HomeScreen(),
    );
  }
}
