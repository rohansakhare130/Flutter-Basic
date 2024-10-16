import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  void callBack() {
    if (kDebugMode) {
      print('Clicked !!!');
    }
  }

  @override
  Widget build(BuildContext context) {
    var arrColors = [
      Colors.amber,
      Colors.blue,
      Colors.cyan,
      Colors.yellowAccent,
      Colors.red,
      Colors.deepOrangeAccent,
      Colors.blueGrey,
      Colors.deepPurple,
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text('Grid View'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(10),
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 11,
                mainAxisSpacing: 11,
                children: arrColors.map((color) {
                  return Container(
                    color: color,
                  );
                }).toList(),
              ),
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: callBack,
            child: const Text('Click Me'),

          ),
        ],
      ),
    );
  }
}
