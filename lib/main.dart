import 'package:flutter/material.dart';
import 'package:flutter_compass/flutter_compass.dart';
import 'dart:math';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vastupower/gates.dart';
import 'package:vastupower/objects.dart';
import 'package:vastupower/article.dart';
import 'package:vastupower/support.dart';
import 'package:vastupower/supsciption.dart';

import 'login.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]) // this forces the app to keep portrait orientation- No Matter What
      .then((_) {
    runApp(Login());
  });
}
Color mycolor = Colors.orange;

class Compass extends StatefulWidget {
  @override
  _CompassState createState() => new _CompassState();
}

class _CompassState extends State<Compass> {
  double _direction;


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
    return new MaterialApp(
      theme: ThemeData(
        //primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: CompassRed(direction: _direction),
    );
  }
}

class CompassRed extends StatelessWidget {
  const CompassRed({
    Key key,
    @required double direction,
  }) : _direction = direction, super(key: key);

  final double _direction;


  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/appicon.png',
         height: 100,
        width: 100,),

        title:  Text('VASTU POWER'),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              child: Image.asset('assets/upper1.jpg'),
            ),
            Container(
              child: Text('|',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),),
            ),

            Expanded(
              flex: 4,
              child: Container(
                width: 350,
                alignment: Alignment.center,
                color: Colors.white,
                child: Transform.rotate( // to get the angle deviation
                  angle: (((_direction ?? 0) * (pi / 180) *-1)),
                  child: Image.asset('assets/shakti.png'),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 30,
                child: Text(
                  '$_direction',
                  style: TextStyle(
                      fontSize: 30,
                      color: mycolor,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),

            Container(
              height: 50,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      child: Text('OBJECTS',
                      style: TextStyle(
                        color: Colors.white
                      ),),
                      color: mycolor,
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Object()),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(

                    child: RaisedButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Gates()),
                        );
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      child: Text('GATE',
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                      color: mycolor,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      child: Text('ARTICLES',
                        style: TextStyle(
                            color: Colors.white
                        ),),
                      color: mycolor,
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Article()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      child: Text('DEVTA',
                        style: TextStyle(
                            color: Colors.white
                        ),),
                      color: mycolor,
                      onPressed: (){},
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                        child: Text('REMEDIES',
                          style: TextStyle(
                              color: Colors.white,
                          ),),

                      color: mycolor,
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Subscribe()),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      child: Text('SUPPORT',
                        style: TextStyle(
                            color: Colors.white
                        ),),
                      color: mycolor,
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Support()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}