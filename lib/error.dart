import 'package:flutter/material.dart';

class Error{

  showerror(BuildContext context, String title, String Message){
    return showDialog(
        context: context,
        barrierDismissible: true,

        builder: (BuildContext context){
          return AlertDialog(
            title: Text(title),
            content: Text(Message),
          );
        }
    );
  }
}