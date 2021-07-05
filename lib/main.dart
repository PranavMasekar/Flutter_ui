import 'package:flutter/material.dart';
import 'package:flutter_ui/post.dart';
import 'package:flutter_ui/profile.dart';

import 'appbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xff1e0d2d),
          body: ListView(
            children: [
              Stack(
                children: [
                  MyPost(),
                  Profile(),
                  MyAppBar(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
