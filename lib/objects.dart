
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
                MaterialPageRoute(builder: (context) => Direction('Television')),
              );
            },
          ),

          InkWell(child: Catog(FaIcon(FontAwesomeIcons.soap),'Washing\nMachine'),
            splashColor: Colors.blue,
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Direction('WM')),
              );
            },),
          InkWell(child: Catog(FaIcon(FontAwesomeIcons.fire),'Heater'),
            splashColor: Colors.blue,
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Direction('Heater')),
              );
            },),
          InkWell(child: Catog(FaIcon(FontAwesomeIcons.medkit),'Medicine'),
            splashColor: Colors.blue,
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Direction('Medicine')),
              );
            },),
          InkWell(child: Catog(FaIcon(FontAwesomeIcons.music),'Music'),
            splashColor: Colors.blue,
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Direction('Music')),
              );
            },),
          InkWell(child: Catog(FaIcon(FontAwesomeIcons.book),'Study Table'),
            splashColor: Colors.blue,
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Direction('Study table')),
              );
            },),
          InkWell(child: Catog(FaIcon(FontAwesomeIcons.bed),'Bed'),
            splashColor: Colors.blue,
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Direction('Bed')),
              );
            },),
          InkWell(child: Catog(FaIcon(FontAwesomeIcons.recycle),'Dustbin'),
            splashColor: Colors.blue,
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Direction('Dustbin')),
              );
            },),
          InkWell(child: Catog(FaIcon(FontAwesomeIcons.female),'Mirror'),
            splashColor: Colors.blue,
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Direction('Mirror')),
              );
            },),
          InkWell(child: Catog(FaIcon(FontAwesomeIcons.laptop),'Computer'),
            splashColor: Colors.blue,
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Direction('Computer')),
              );
            },),
          InkWell(child: Catog(FaIcon(FontAwesomeIcons.lightbulb),'Invertor'),
            splashColor: Colors.blue,
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Direction('Inverter')),
              );
            },),
          InkWell(child: Catog(FaIcon(FontAwesomeIcons.thermometer),'Fuse box'),
            splashColor: Colors.blue,
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Direction('METER OR FUSEBOX')),
              );
            },),
          InkWell(child: Catog(FaIcon(FontAwesomeIcons.lock),'Safe'),
            splashColor: Colors.blue,
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Direction('Safe')),
              );
            },),
          InkWell(child: Catog(FaIcon(FontAwesomeIcons.brush),'Dressing\nTable'),
            splashColor: Colors.blue,
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Direction('Dressing Table')),
              );
            },),
          InkWell(child: Catog(FaIcon(FontAwesomeIcons.fish),'Aquarium'),
            splashColor: Colors.blue,
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Direction('Aquarium')),
              );
            },),
          InkWell(child: Catog(FaIcon(FontAwesomeIcons.dog),'Pets'),
            splashColor: Colors.blue,
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Direction('Pets')),
              );
            },),

        ],
      )
    );
  }
}

Widget Catog(FaIcon icon, String name){
  return  Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
      color: Colors.orange,
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