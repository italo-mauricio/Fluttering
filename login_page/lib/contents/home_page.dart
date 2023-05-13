import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'app_login.dart';
import 'app_controller.dart';

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
      drawer: Drawer(
        child: Column(children: [
          Column(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTedaPWyAeCHGxGgSZ8k5O__qCb3jvH6QA-oN-h-t5MqHZqHSCzz6tAQ9z01icflBxjOk0&usqp=CAU')),
                accountName: const Text('Lionel Messi'), accountEmail: const Text('messithegoat@gmail.com')),
            ],
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Inicio'),
            subtitle: const Text('Tela de Inicio'),
            onTap: () {
              if (kDebugMode) {
                print('home');
              }
            },
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Logout'),
            subtitle: const Text('Finalizar sessão'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          )
        ]),
      ),
      appBar: AppBar(
        title: const Text("First APP"),
        actions: [CustomSwitch()],
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Contador: $count"),
            Container(height: 50),
            CustomSwitch(),
            Container(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,  
            ),
          ],
        ),
      ),
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

class CustomSwitch extends StatelessWidget {
  CustomSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isDarkTheme,
        onChanged: (value) {
          AppController.instance.changeTheme();
        });
  }
}
