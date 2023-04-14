
import 'package:flutter/material.dart';
import 'home_page.dart';




class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      home: HomePage(),
    );
  }
}