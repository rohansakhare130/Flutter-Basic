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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _width = 200.0;
  var _hight = 100.0;
  bool flag = true;
Color bgColor = Colors.cyan;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Foo Animations'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 2),
              width: _width,
              height: _hight,
              color: bgColor,
            ),
            SizedBox(height:50),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (flag) {
                    _width = 100.0;
                    _hight = 200.0;
                    bgColor = Colors.red;
                  } else {
                    _width = 200.0;
                    _hight = 100.0;
                    bgColor = Colors.cyan;
                  }
                  flag = !flag;  // Toggle the flag here
                });
              },
              child: Text('Animate'),
            ),
          ],
        ),
      ),
    );
  }
}
