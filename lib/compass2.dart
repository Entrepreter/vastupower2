
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_compass/flutter_compass.dart';
import 'dart:math';

import 'package:url_launcher/url_launcher.dart';

class Compass2 extends StatefulWidget {


  @override
  _Compass2State createState() => _Compass2State();
}

class _Compass2State extends State<Compass2> {

  double _direction;

  double latitute =0;
  double longitude =0;


  @override
  void initState() {
    super.initState();

    FlutterCompass.events.listen((double direction) {
      setState(() {
        _direction = direction;
      });
    });


  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Expanded(
              flex:5,
              child: Container(
                alignment: Alignment.center,
                color: Colors.white,
                child: Transform.rotate( // to get the angle deviation
                  angle: (((_direction ?? 0) * (pi / 180) *-1)),
                  child: Image.asset('assets/COMPASS.png'),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 30,
                child: Text(
                  '${_direction}',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.indigo,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),

            RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Text('Check Latitiute-Longitude',
                style: TextStyle(
                    color: Colors.white
                ),),
              color: Colors.indigo,
              onPressed: (){
                launch('https://www.gps-coordinates.net/');
              },
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }




}





