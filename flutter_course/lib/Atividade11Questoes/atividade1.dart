import 'package:flutter/material.dart';

void Atividade1() {
  MaterialApp app = MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Ifilmes",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                    ElevatedButton(
                      onPressed: () {
                        // ação a ser executada quando o botão for pressionado
                      },
                      child: const Text("Pressione aqui"),
                    ),
                    const SizedBox(height: 16), // espaçamento entre os widgets
                    const Text("", 
                    style: TextStyle(
                    color: Colors.black, 
                    fontWeight: FontWeight.bold)),
                  
                   
        ])),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "person",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "favorite",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm),
              label: "access_alarm",
            ),
          ],
        ),
      ));

  runApp(app);
}