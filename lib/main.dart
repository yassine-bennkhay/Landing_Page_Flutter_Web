import 'package:flutter/material.dart';
import 'package:post/landing_page/LandingPage.dart';
import 'package:post/navbar/navbar.dart';
main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color(0xff0072E9),Color(0xff304EBE)]
          )
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              NavBar(),Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                child: LandingPage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
