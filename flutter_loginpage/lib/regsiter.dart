import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return  Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/regiter.jpg'), fit: BoxFit.cover)),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 35, top: 50),
                  child: Text(
                    "Create \n Account",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 33,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.3,
                          right: 35,
                          left: 35),
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: 'Enter your Name',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(11),
                                )),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                           
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: 'Enter your Email',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(11),
                                )),
                          ),
                           SizedBox(
                            height: 20,
                          ),
                          TextField(
                           
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: 'Enter your Password',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(11),
                                )),
                          ),
                           SizedBox(
                            height: 20,
                          ),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: 'Confirm Password',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(11),
                                )),
                          ),
                           SizedBox(
                            height: 20,
                          ),
                        
                          TextField(
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: 'Enter your Phone No',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(11),
                                )),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Sign Up',
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
                            height: 10,
                          ),
                          Row(
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'login');
                                  },
                                  child: Text(
                                    'Sign In',
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