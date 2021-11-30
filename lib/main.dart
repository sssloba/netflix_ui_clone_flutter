import 'package:flutter/material.dart';
import 'package:flutter_netflix_responsive_ui/screens/screens.dart';
import 'package:flutter_netflix_responsive_ui/utility/custom_scroll_behaviour.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Netflix UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.black,
      ),
      scrollBehavior: CustomScrollBehavior(),
      home: NavScreen(),
    );
  }
}
