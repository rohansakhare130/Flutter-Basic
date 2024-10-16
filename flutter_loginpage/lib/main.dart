import 'package:flutter/material.dart';
import 'package:flutter_loginpage/login.dart';
import 'package:flutter_loginpage/regsiter.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context) => LoginWidget(),
      'register': (context) => Register()
    },
  ));
}

