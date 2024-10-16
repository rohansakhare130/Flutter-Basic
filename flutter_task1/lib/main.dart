import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var arrNames = ['one', 'two', 'three', 'four', 'five', 'six'];

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150), 
        child: AppBar(
          backgroundColor: Colors.amber,
          flexibleSpace: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      
      body: Container(
        
        child: ListView.builder(
          itemCount: arrNames.length,
          itemExtent: 120, 
          itemBuilder: (context, index) {
            
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                color: index % 2 == 0 ? Colors.blue : Colors.green, 
                alignment: Alignment.center, 
                child: Text(
                  arrNames[index],
                  style: const TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
