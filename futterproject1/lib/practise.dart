import 'dart:io';

void main(){
  print('hello sir');

  stdout.write('Enter your Name: ');

  var name = stdin.readLineSync();
  print("Welcome, $name");

  Human(); //creating an class object

  //Declaration of Variable
  int a;
  //Assign
  a=6; //initialization

  print(a);

   String names = "Rohan";


}

class Human {
  void printName(String name){
    print(name);
  }
}