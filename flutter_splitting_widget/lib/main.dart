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

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          backgroundColor: Colors.yellowAccent,
          titleTextStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
        ),
        body: Container(
          child: Column(
            children: [
              CatItems(),
              funItems(),
              Expanded(
                  flex: 2,
                  child: Container(
                    height: 200,
                    color: Colors.green,
                  ))
            ],
          ),
        ));
  }
}


class CatItems extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return  Expanded(
          flex: 2,
          child: Container(
              height: 200,
              color: Colors.blueGrey,
              child: ListView.builder(
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: SizedBox(
                    child: CircleAvatar(
                      backgroundColor: Colors.red.shade500,
                    ),
                  ),
                ),
                itemCount: 30,

                scrollDirection: Axis.horizontal,
              )));

  }

}


class funItems extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return   Expanded(
        flex: 4,
        child: Container(
          color: Colors.red,
          child: ListView.builder(itemBuilder: (context,index) =>
              Padding(padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: CircleAvatar(
                      backgroundColor: Colors.green
                  ),
                  title: Text('Rohan'),
                  subtitle: Text('Phone No'),
                  trailing: Icon(Icons.delete),
                ),
              )
          ),
        ));

  }

}