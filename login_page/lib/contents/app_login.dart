import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

bool _isValidEmail(String email) {
  return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
}

bool _isValidPassword(String password) {
  return password.length >= 6;
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

    List<Map<String, String>> validUsers = [
    {'email': 'italomauricio98@gmail.com', 'password': '123'},
    {'email': 'outroemail@example.com', 'password': 'outrasenha'},
    // adicione outros usuários válidos aqui, se necessário
  ];


  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextField(
              onChanged: (text) {
                setState(() {
                  email = text;
                });
              },
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              onChanged: (text) {
                setState(() {
                  password = text;
                });
              },
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
                onPressed: () {
                bool isValid = false;
                for (var user in validUsers) {
                  if (user['email'] == email && user['password'] == password) {
                    isValid = true;
                    break;
                  }
                }
                if (isValid) {
                  if (kDebugMode) {
                    print("E-mail e senha corretos");
                  }
                } else {
                  if (kDebugMode) {
                    print("E-mail ou senha incorretos");
                  }
                }
                },
                child: const Text('Entrar'))
          ]),
        ),
      ),
    );
  }
}
