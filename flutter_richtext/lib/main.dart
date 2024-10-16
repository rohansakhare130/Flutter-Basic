import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Home Page'),
      ),
      body: Center(
        child: RichText(
          text: const TextSpan(
            style: TextStyle(
              color: Colors.grey,
              fontSize: 21,
            ),
            children: <TextSpan>[
              TextSpan(text: 'Hello, '),
              TextSpan(
                text: 'World',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: ' Welcome to ',
              ),
              TextSpan(
                text: 'Flutter',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                ),
              ), 
            ],
          ),
        ),
      ),
    );
  }
}
