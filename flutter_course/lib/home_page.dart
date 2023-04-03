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
        title: Text('Home Page'),
       ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () { 
          setState(() {
            count++;
          });
         },),
       body: Center(
          child: GestureDetector(
        child: Text('Teste $count',
        style: const TextStyle(fontSize: 200),),
        onTap: () {
        },
      )),
    );
  }
}
