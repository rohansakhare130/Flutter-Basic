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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var arrData = [
    {'name': 'Raj', 'mobno': '7655348066', 'unread': '3'},
    {'name': 'Ashok', 'mobno': '7655348066', 'unread': '2'},
    {'name': 'Raviraj', 'mobno': '7655348066', 'unread': '4'}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Home Page'),
      ),
      body: Container(
        child: ListView(
            children: arrData
                .map((value) => ListTile(
                      leading: Icon(Icons.account_circle),
                      title: Text(value['name'].toString()),
                      subtitle: Text(value['mobno'].toString()),
                      trailing: CircleAvatar(
                        radius:12,
                        backgroundColor: Colors.blue,
                        child: Text(value['unread'].toString() ,style: TextStyle( color: Colors.white, fontSize: 10, fontWeight: FontWeight.w700),),
                      )
                      
                      
                    ))
                .toList()),
      ),
    );
  }
}
