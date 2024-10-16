import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        title: const Text('Icons'),
      ),
      body: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            Icon(
              Icons.play_arrow_outlined,
              size: 50,
              color: Colors.deepOrange,
            ),
            SizedBox(width: 11),
            FaIcon(FontAwesomeIcons.amazon, size: 50), 
          ],
        ),
      ),
    );
  }
}
