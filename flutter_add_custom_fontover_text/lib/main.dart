import 'package:flutter/material.dart';

void main() {
  runApp(const TextOver());
}

class TextOver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          backgroundColor: Colors.lightGreen,
        ),
       body: Container(
      child: Text('Hello World'),
    ),

    );
  }



}


