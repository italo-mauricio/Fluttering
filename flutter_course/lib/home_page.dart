import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First APP"),
      ),
      body: Center(
          child: GestureDetector(
              child: Text(
                "clicando $count",
                style: TextStyle(fontSize: 100),
              ),
              onTap: () {
                setState(() {
                  count++;
                });
              })),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            count++;
          });
        },
      ),
    );
  }
}
