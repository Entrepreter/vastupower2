
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vastupower/directions.dart';

class Object extends StatefulWidget {
  @override
  _ObjectState createState() => _ObjectState();
}

class _ObjectState extends State<Object> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: objects(),
    );
  }
}


class objects extends StatefulWidget {
  @override
  _objectsState createState() => _objectsState();
}

class _objectsState extends State<objects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OBJECTS'),
        backgroundColor: Colors.blue,
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: <Widget>[
          InkWell(
            child: Catog(FaIcon(FontAwesomeIcons.tv),'Television'),
            splashColor: Colors.blue,
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Direction()),
              );
            },
          ),

          Catog(FaIcon(FontAwesomeIcons.soap),'Washing machine'),
          Catog(FaIcon(FontAwesomeIcons.fire),'Heater'),
          Catog(FaIcon(FontAwesomeIcons.medkit),'Medicine'),
          Catog(FaIcon(FontAwesomeIcons.music),'Music'),
          Catog(FaIcon(FontAwesomeIcons.book),'Study Table'),
          Catog(FaIcon(FontAwesomeIcons.bed),'bed'),
          Catog(FaIcon(FontAwesomeIcons.recycle),'Dustbin'),
          Catog(FaIcon(FontAwesomeIcons.female),'Mirror'),
          Catog(FaIcon(FontAwesomeIcons.laptop),'Computer'),
          Catog(FaIcon(FontAwesomeIcons.lightbulb),'Invertor'),
          Catog(FaIcon(FontAwesomeIcons.thermometer),'Metre of Fuse box'),
          Catog(FaIcon(FontAwesomeIcons.lock),'Safe'),
          Catog(FaIcon(FontAwesomeIcons.brush),'Dressing table'),
          Catog(FaIcon(FontAwesomeIcons.fish),'Aquarium'),
          Catog(FaIcon(FontAwesomeIcons.dog),'Pets'),

        ],
      )
    );
  }
}

Catog(FaIcon icon, String name){
  return  Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
      color: Colors.deepOrange,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Expanded(flex:1,child: icon),
            // SizedBox(
            //   height: 5,
            // ),
            Expanded(
              flex: 1,
              child: Text(name,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                ),),
            )
          ],
        ),
      ),

  );
}