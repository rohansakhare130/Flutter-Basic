import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/login.jpg'), fit: BoxFit.cover)),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 35, top: 120),
                  child: Text(
                    "Welcome \n Back",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 33,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.5,
                          right: 35,
                          left: 35),
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: 'Email',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(11),
                                )),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: 'Password',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(11),
                                )),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Sign In',
                                style: TextStyle(
                                    color: Color.fromARGB(241, 255, 255, 255),
                                    fontSize: 27,
                                    fontWeight: FontWeight.w700),
                              ),
                              CircleAvatar(
                                radius: 20,
                                backgroundColor:
                                    Color.fromARGB(255, 176, 176, 176),
                                child: IconButton(
                                    color: Colors.white,
                                    onPressed: () {},
                                    icon: Icon(Icons.arrow_forward)),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'register');
                                  },
                                  child: Text(
                                    'Sign Up',
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 0, 68, 255),
                                    ),
                                  )),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Forget Password',
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 0, 68, 255),
                                    ),
                                  ))
                            ],
                          )
                        ],
                      )),
                )
              ],
            )));
  }
}
