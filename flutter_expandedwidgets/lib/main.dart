import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DashBoardScreen(),
    );
  }
}

class DashBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.blue,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //  Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.red.shade500,
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue.shade500,
                ),
                Expanded(
                  flex: 3,

                  child: Padding(
                    padding: const EdgeInsets.only(left:8 ),
                    child: Container(

                      width: 50,
                      height: 100,
                      color: Colors.yellow.shade500,
                    ),
                  ),
                ),

                Padding(

                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(
                    flex: 3,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.orange.shade500,
                    ),
                  ),
                ),
              ],
            ),
            // Second Column below the Row
            Column(
              children: [
                Container(
                  margin:EdgeInsets.only(bottom:12),
                  height: 100,
                  color: Colors.green.shade500,
                ),
                Container(
                  margin:EdgeInsets.only(bottom:12),
                  height: 100,
                  color: Colors.purple.shade500,
                ),
                Container(
                  margin:EdgeInsets.only(bottom:12),
                  height: 100,
                  color: Colors.yellow.shade500,
                ),
                Container(
                  margin:EdgeInsets.only(bottom:12),
                  height: 100,
                  color: Colors.red.shade500,

                ),
                Container(

                  height: 100,
                  color: Colors.lightGreenAccent,

                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
