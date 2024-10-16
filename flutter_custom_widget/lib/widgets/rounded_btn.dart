import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String btnName;
  final Icon? icon;
  final Color? bgcolor;
  final TextStyle? textStyle;
  final VoidCallback? callBack;

  const RoundedButton({
    required this.btnName,
    this.icon,
    this.bgcolor = Colors.blue,
    this.textStyle,
    this.callBack,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callBack!();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: bgcolor, // Set the background color here
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30), // Customize the border radius
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            icon!,
            const SizedBox(width: 8), // Add space between icon and text
          ],
          Text(
            btnName,
            style: textStyle,
          ),
        ],
      ),
    );
  }
}



class TextInput extends StatelessWidget {
  const TextInput({super.key, required TextStyle textStyle, required String labelText, required MaterialColor bgcolor});

  // final String btnName;
  // final Icon? icon;
  // final Color? bgcolor;
  // final TextStyle? textStyle;
  // final VoidCallback? callBack;

 

  // const TextInput({
  //   required this.btnName,
  //   this.icon,
  //   this.bgcolor = Colors.blue,
  //   this.textStyle,
  //   this.callBack,
  //   super.key,
  // });

  @override
  Widget build(BuildContext context) {
    return const Padding(  
                  padding: EdgeInsets.all(15),  
                  child: TextField(  
                    obscureText: true,  
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'Password',  
                      hintText: 'Enter Password',  
                    ),  
                  ),  
                );  
  }
}
