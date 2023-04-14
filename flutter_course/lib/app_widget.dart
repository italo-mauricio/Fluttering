
import 'package:flutter/material.dart';
import 'home_page.dart';




class AppWidget extends StatelessWidget {


  const AppWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      home: HomePage(),
    );
  }
}