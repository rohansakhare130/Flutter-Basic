import 'package:flutter/material.dart';
import 'package:flutter_stateless_stateful_widgets/splash_screen.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var controller1No = TextEditingController();
  var controller2No = TextEditingController();

  var result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stateful'),
        ),
        body: Container(
          color: Colors.blue.shade100,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  controller: controller1No,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: controller2No,
                ),
                Padding(
                    padding: const EdgeInsets.all(21.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              var no1 =
                                  int.parse(controller1No.text.toString());
                              var no2 =
                                  int.parse(controller2No.text.toString());

                              var sum = no1 + no2;
                              setState(() {
                                result = "The sum of $no1 and $no2 is $sum";
                              });
                            },
                            child: Text('Add')),
                        ElevatedButton(
                            onPressed: () {
                              var no1 =
                                  int.parse(controller1No.text.toString());
                              var no2 =
                                  int.parse(controller2No.text.toString());

                              var sub = no1 - no2;
                              setState(() {
                                result = "The sum of $no1 and $no2 is $sub";
                              });
                            },
                            child: Text('Sub')),
                        ElevatedButton(
                            onPressed: () {
                              var no1 =
                                  int.parse(controller1No.text.toString());
                              var no2 =
                                  int.parse(controller2No.text.toString());

                              var mul = no1 * no2;
                              setState(() {
                                result = "The sum of $no1 and $no2 is $mul";
                              });
                            },
                            child: Text('Mul')),
                        ElevatedButton(
                            onPressed: () {
                              var no1 =
                                  int.parse(controller1No.text.toString());
                              var no2 =
                                  int.parse(controller2No.text.toString());

                              var div = no1 / no2;
                              setState(() {
                                result = "The sum of $no1 and $no2 is $div";
                              });
                            },
                            child: Text('Div'))
                      ],
                    )),
                Padding(
                    padding: EdgeInsets.all(21),
                    child: Text(
                      result,
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    )),
              ],
            ),
          ),
        ));
  }
}
