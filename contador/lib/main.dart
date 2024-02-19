import 'dart:developer';

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

  void increment() {
    log('Incremento btn');
  }

  void decrement() {
    log('Decremento btn');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Pode entrar!',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
            const Padding(padding: EdgeInsets.all(40),
            child: Text(
              '0',
              style: TextStyle(
                  fontSize: 100,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    onPressed: decrement,
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        fixedSize: const Size(100, 100),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        foregroundColor: Colors.black),
                    child: const Text(
                      'Saiu',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    )),
                TextButton(
                    onPressed: increment,
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        fixedSize: const Size(100, 100),
                        shape:  RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        foregroundColor: Colors.black),
                    child: const Text(
                      'Entrou',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ))
              ],
            )
          ],
        ));
  }
}
