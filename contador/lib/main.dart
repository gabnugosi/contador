import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void increment() {}

  void decrement() {}

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.red,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Pode entrar!',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              '0',
              style: TextStyle(
                  fontSize: 100,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: null,
                    child: Text(
                      'Saiu',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    )),
                TextButton(
                    onPressed: null,
                    child: Text(
                      'Entrou',
                      style: TextStyle(color: Colors.black,fontSize: 16),
                    ))
              ],
            )
          ],
        ));
  }
}
