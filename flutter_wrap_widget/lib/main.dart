import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
            title: Text('Wrap Widget'),
          ),
          body: Container(
            width: double.infinity,
            child:      Wrap(
            alignment: WrapAlignment.spaceAround,
            direction: Axis.horizontal,
            spacing: 11,
            runSpacing: 11,

            children: [
            Container(
              width: 300,
              height: 200,
              color: Colors.deepOrangeAccent,
            ),

            Container(
              width: 300,
              height: 200,
              color: const Color.fromARGB(255, 255, 249, 64),
            ),
             Container(
              width: 300,
              height: 200,
              color: const Color.fromARGB(255, 255, 0, 0),
            ),
             Container(
              width: 300,
              height: 200,
              color: const Color.fromARGB(255, 255, 60, 0),
            ),
             Container(
              width: 300,
              height: 200,
              color: const Color.fromARGB(255, 115, 255, 0),
            ),
             Container(
              width: 300,
              height: 200,
              color: const Color.fromARGB(255, 0, 30, 255),
            ),
             Container(
              width: 300,
              height: 200,
              color: const Color.fromARGB(255, 255, 1, 162),
            ),
             Container(
              width: 300,
              height: 200,
              color: const Color.fromARGB(255, 76, 29, 59),
            ),
             Container(
              width: 300,
              height: 200,
              color: const Color.fromARGB(255, 76, 29, 59),
            ),
          ],),
          )
          
     
        );
     }


}

