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
    var arrNames = ['Raj', 'Akash', 'Raviraj', 'Rohan', 'Vikas', 'Rani'];
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
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                leading: Text('${index}'),
                title: Text(arrNames[index]),
                subtitle: Text('Number'),
                trailing: Icon(Icons.add),
              );
            },
            itemCount: arrNames.length,
            separatorBuilder: (context, index) {
              return Divider(
                height: 20,
                thickness: 2,
                color: Colors.yellow.shade500,
              );
            }));
  }
}
