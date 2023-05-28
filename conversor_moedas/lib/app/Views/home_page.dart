import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 100, bottom: 20),
          child: Column(
            children: [
              Image.asset('assets/logo.png', width: 150, height: 150),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Expanded(
                        child: DropdownButton(items: [], onChanged: (value) {})),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(),
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(onPressed: () => {}, child: Text('Converter'))
            ],
          ),
        ),
      ),
    );
  }
}
