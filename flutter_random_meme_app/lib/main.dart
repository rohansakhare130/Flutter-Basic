import 'package:flutter/material.dart';
import 'package:flutter_random_meme_app/view/mainScreen.dart';
import 'package:flutter_random_meme_app/view/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool showSplash = true;

  @override
  void initState() {
    super.initState();
    showSplashScreen();
  }

  void showSplashScreen() {
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        showSplash = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UnSad',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: showSplash ? SplashScreen() : MainScreen(),
    );
  }
}
