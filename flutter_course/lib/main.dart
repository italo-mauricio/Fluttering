import 'package:flutter/material.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
          child: Text("Olá pessoas",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  color: Color.fromARGB(255, 221, 17, 17), fontSize: 50.0))),
    );
  }
}
