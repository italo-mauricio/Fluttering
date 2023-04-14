import 'package:flutter/material.dart';
import 'app_controller.dart';
import 'app_login.dart';


class AppWidget extends StatelessWidget {
  const AppWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.red,
            brightness: AppController.instance.isDarkTheme ? Brightness.dark : Brightness.light,
          ),
          home:
          HomePage(),
        );
      }, animation: AppController.instance,
    );
  }
}
