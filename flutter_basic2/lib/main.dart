import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red, // Applying blue primary swatch
        // Adapts to different screen densities
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Dev'),
      ),
      body: Center(
        child: Container(
          width:100,
          height:100,
          color: Colors.amber,
          child:const Center(child: Text('Rohan ', style: TextStyle(color: Colors.white, fontSize:22 , fontWeight:FontWeight.w600),))
            

        ),
        
      ),
    );
  }
}
