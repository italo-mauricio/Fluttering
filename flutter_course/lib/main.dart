import 'package:flutter/material.dart';

main() {
  runApp(Container(
    child: const Center(
      child: Text(
        'Aplicativo Inicial',
        textDirection: TextDirection.ltr,
        style: TextStyle(color: Colors.black, fontSize: 20.0),
      ),
    ),
  ));
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text(
          'Aplicativo Inicial',
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.black, fontSize: 20.0),
        ),
      ),
    );
  }
}
