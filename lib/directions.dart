import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vastupower/remedy.dart';

class Direction extends StatefulWidget {
  @override
  _DirectionState createState() => _DirectionState();
}

class _DirectionState extends State<Direction> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Direct(),
    );
  }
}

class Direct extends StatefulWidget {
  @override
  _DirectState createState() => _DirectState();
}

class _DirectState extends State<Direct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DIRECTIONS'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: ListView(
          
          children: [
            InkWell(
              splashColor: Colors.green,
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Remedy()),
                );
              },
              child: ListTile(
                leading: Icon(Icons.north),
                title: Text('North'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
