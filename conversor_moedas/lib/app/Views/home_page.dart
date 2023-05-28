import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Image.asset('assets/logo.png'),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Expanded(child: DropdownButton(items: [], onChanged: (value) {})),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(),
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () => {}, 
              child: Text('Converter'))
          ],
        ),
      ),
    );
  }
}
