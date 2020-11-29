import 'package:flutter/material.dart';
import 'package:flutter_compass/flutter_compass.dart';
import 'dart:math';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vastupower/devta.dart';
import 'package:vastupower/gates.dart';
import 'package:vastupower/objects.dart';
import 'package:vastupower/article.dart';
import 'package:vastupower/support.dart';
import 'package:vastupower/supsciption.dart';
import 'package:vastupower/tutor.dart';
import 'login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]) // this forces the app to keep portrait orientation- No Matter What
      .then((_) {
    runApp(Login());
  });
}
Color mycolor = Colors.orange;

class Compass extends StatefulWidget {

  Compass(this.username) : super();
  String username;



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
        home: Scaffold(
         drawer: Drawer(
            child: ListView(
              children: [
                  DrawerHeader(

                   child: Center(child: Column(
                     children: [
                       Expanded(flex:1,
                         child: Text('Welcome',
                         style: TextStyle(
                           fontSize: 20,
                           fontFamily: 'Lora',
                         ),),
                       ),
                       SizedBox(
                         height: 20,
                       ),
                       Expanded(flex: 3,
                         child: Text(widget.username,
                           style: TextStyle(
                             fontSize: 25,
                             fontFamily: 'Lora',
                           ),),
                       ),

                     ],
                   )),
                        decoration: BoxDecoration(
                      color: Colors.orange
                    ),
                   ),
              RaisedButton(
                  shape:  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0)),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => subscribe(widget.username)),
                    );

                  },
                  child: Text('MY SUBSCRIPTION'),
                ),
                RaisedButton(
                  shape:  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0)),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => support()),
                    );

                  },
                  child: Text('SUPPORT'),
                ),
            ],
            )
          ),
             appBar: AppBar(
//        leading: Image.asset('assets/appicon.png',
//         height: 100,
//        width: 100,),

                title:  Row(
                  //mainAxisAlignment: MainAxisAlignment.cent,

                  children: [
//                  Image.asset('assets/appicon.png',
//                 height: 100,
//                  width: 100,),
                    Text('VASTU POWER'),

                  ],
                ),

           backgroundColor: Colors.blue,
             )  ,
            backgroundColor: Colors.white,
           body:CompassRed(widget.username,direction: _direction,)
        ));

  }
}

class CompassRed extends StatefulWidget {




  const CompassRed(
  this.name,
      {
    Key key,
    @required double direction,
  }) : _direction = direction, super(key: key);
  final name;
  final double _direction;



  @override
  _CompassRedState createState() => _CompassRedState();
}

class _CompassRedState extends State<CompassRed> {
  @override
  Widget build(BuildContext context) {


    return StreamBuilder(
      stream: Firestore.instance
          .collection("users").where(
          "username", isEqualTo: widget.name)
          .snapshots(),
      builder: (context,snapshot){
        return Builder(
          builder: (BuildContext context){
            if (snapshot.data == null)
              return CircularProgressIndicator();
            DocumentSnapshot obj = snapshot.data.documents[0];
            fees = obj["paid"];
            end = obj["endTime"];
            endtime =end.toDate();
//            print(endtime);
//            print(widget.name);
            return Container(
                child: ((Currenttime().isBefore(endtime) )|| (fees) ) ?
                SafeArea(
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Image.asset('assets/upper1.jpg'),
                      ),
//            SizedBox(
//              height: 10,
//            ),
            Container(
              child: Text('|',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),),
            ),


                      Expanded(
                        flex: 5,
                        child: Container(
                          //width: MediaQuery.of(context).size.width -10,
                          alignment: Alignment.center,
                          color: Colors.white,
                          child: Transform.rotate( // to get the angle deviation
                            angle: (((widget._direction ?? 0) * (pi / 180) *-1)),
                            child: Image.asset('assets/shakti.png'),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 30,
                          child: Text(
                            '${widget._direction}',
                            style: TextStyle(
                                fontSize: 30,
                                color: mycolor,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
//                      Expanded(
//                        flex: 1,
//                        child: Container(
//                          height: 30,
//                          child: Text(DirDisplay(widget._direction),
//                            style: TextStyle(
//                                fontSize: 30,
//                                color: mycolor,
//                                fontWeight: FontWeight.bold
//                            ),
//                          ),
//                        ),
//                      ),

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
                                    MaterialPageRoute(builder: (context) => objects()),
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
                                    MaterialPageRoute(builder: (context) => gate()),
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
                                    MaterialPageRoute(builder: (context) => articles()),
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
                                onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Devta()),
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
                                child: Text('TUTOR',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),),

                                color: mycolor,
                                onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Tutor()),
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
                                    MaterialPageRoute(builder: (context) => support()),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      )

                    ],
                  ),
                )
                    : Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    height: MediaQuery
                        .of(context)
                        .size
                        .height,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/bgimage.jpg'),
                            fit: BoxFit.fill
                        )
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'You have not Subscribed to the annual pack \n Subscribe at 2000/- for a year',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Lora',
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
//                        RaisedButton(
//                          onPressed: () {
//                              Navigator.push(
//                                context,
//                                MaterialPageRoute(builder: (context) => subscribe(username)),
//                              );
//
//                          },
//                          child: Text('Subscribe'),
//                          color: Colors.yellow,
//                        )
                      ],))
            );

          },
        );
      },

    );
  }

  String DirDisplay(double dir){

    if(dir<11 && dir>349){
      return "North";
    }
    else  if(dir<34 && dir>12){
      return "NNE";
    }
    else  if(dir<57 && dir>35){
      return "NE";
    }
    else  if(dir<80 && dir>58){
      return "ENE";
    }
    else  if(dir<103 && dir>81){
      return "East";
    }
    if(dir<126 && dir>104){
      return "ESE";
    }
    else  if(dir<149 && dir>127){
      return "SE";
    }
    else  if(dir<172 && dir>150){
      return "SSE";
    }
    else if(dir<195 && dir>173){
      return "South";
    }
    else  if(dir<218 && dir>196){
      return "SSW";
    }
    else if(dir<241 && dir>219){
      return "SW";
    }
    else if(dir<264 && dir>242){
      return "WSW";
    }
    else if(dir<287 && dir>265){
      return "West";
    }
    else if(dir<310 && dir>288){
      return "WNW";
    }
    else if(dir<333 && dir>311){
      return "NW";
    }
   else if(dir<348 && dir>334){
      return "NNW";
    }
   else {
     return "Null";
    }
  }

}
bool fees;
Timestamp end;
DateTime endtime;

//Widget Buildd(){
//  return StreamBuilder(
//   stream: Firestore.instance
//       .collection("users").where(
//       "username", isEqualTo: "test3@g.com")
//       .snapshots(),
//      builder: (context,snapshot){
//     return Builder(
//       builder: (BuildContext context){
//         DocumentSnapshot obj = snapshot.data.documents[0];
//         fees = obj["paid"];
//         end = obj["endTime"];
//         endtime =end.toDate();
//
//         return Container(
//           child: ((Currenttime().isBefore(endtime) )|| (fees) ) ?
//               Container(child: Text("true"),)
//               : Container(child: Text("false"),)
//         );
//       },
//     );
//      },
//
//  );
//}

DateTime Currenttime(){
  today = new DateTime.now();
  print(today);
  return today;
}

