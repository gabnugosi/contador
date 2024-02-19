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
      debugShowCheckedModeBanner: false,//remove o baner de debug do topo da direita 
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void increment() {
    setState(() {
      count ++;  
    });
    
    log('Entrou btn: $count');
  }

  void decrement() {
    setState(() {
      count --;  
    });

    log('Saiu btn: $count');
  }


  bool get isEmpty => count == 0;
  bool get isFull => count == 20;

  @override
  Widget build(BuildContext context) {
    log("Build");

    return Scaffold(
        backgroundColor: Colors.red,
        body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/imagens/imagem.jpg'),
                    fit: BoxFit.cover)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text(
                  isFull ? 'Lotado' : 'Pode entrar!',
                  style: TextStyle(
                      fontSize: 30,
                      color: isFull ? Colors.red : Colors.black,
                      fontWeight: FontWeight.w700),
                ),
                 Padding(
                  padding: const EdgeInsets.all(40),
                  child: Text(
                    count.toString(), //valor que é incrementado e decrementado pelos botões
                    style:  TextStyle(
                        fontSize: 100,
                        color: isFull ? Colors.red : Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                        onPressed: isEmpty ? null : decrement,
                        style: TextButton.styleFrom(
                            backgroundColor: isEmpty ? Colors.black.withOpacity(0.2): Colors.black,
                            fixedSize: const Size(100, 100),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                            foregroundColor: Colors.white),
                        child: const Text(
                          'Saiu',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        )),
                    TextButton(
                        onPressed: isFull ? null : increment,
                        style: TextButton.styleFrom(
                            backgroundColor: isFull ? Colors.black.withOpacity(0.2): Colors.black,
                            fixedSize: const Size(100, 100),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                            foregroundColor: Colors.white),
                        child: const Text(
                          'Entrou',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ))
                  ],
                )
              ],
            )));
  }
}

