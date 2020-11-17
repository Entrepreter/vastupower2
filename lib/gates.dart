import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vastupower/remedy.dart';

class Gates extends StatefulWidget {
  @override
  _GatesState createState() => _GatesState();
}

class _GatesState extends State<Gates> {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: gate(),
    );
  }
}

class gate extends StatefulWidget {
  @override
  _gateState createState() => _gateState();
}

class _gateState extends State<gate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ZONES'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: ListView(

          children: [
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Remedy('Gate','N1')),
                  );
                },
                child: Compass('N1')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Remedy('Gate','N2')),
                  );
                },
                child: Compass('N2')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Remedy('Gate','N3')),
                  );
                },
                child: Compass('N3')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Remedy('Gate','N4')),
                  );
                },
                child: Compass('N4')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Remedy('Gate','N5')),
                  );
                },
                child: Compass('N5')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Remedy('Gate','N6')),
                  );
                },
                child: Compass('N6')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Remedy('Gate','N7')),
                  );
                },
                child: Compass('N7')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Remedy('Gate','N8')),
                  );
                },
                child: Compass('N8')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Remedy('Gate','E1')),
                  );
                },
                child: Compass('E1')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Remedy('Gate','E2')),
                  );
                },
                child: Compass('E2')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Remedy('Gate','E3')),
                  );
                },
                child: Compass('E3')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Remedy('Gate','E4')),
                  );
                },
                child: Compass('E4')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Remedy('Gate','E5')),
                  );
                },
                child: Compass('E5')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Remedy('Gate','E6')),
                  );
                },
                child: Compass('E6')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Remedy('Gate','E7')),
                  );
                },
                child: Compass('E7')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Remedy('Gate','E8')),
                  );
                },
                child: Compass('E8')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Remedy('Gate','W1')),
                  );
                },
                child: Compass('W1')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Remedy('Gate','W2')),
                  );
                },
                child: Compass('W2')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Remedy('Gate','W3')),
                  );
                },
                child: Compass('W3')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Remedy('Gate','W4')),
                  );
                },
                child: Compass('W4')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Remedy('Gate','W5')),
                  );
                },
                child: Compass('W5')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Remedy('Gate','W6')),
                  );
                },
                child: Compass('W6')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Remedy('Gate','W7')),
                  );
                },
                child: Compass('W7')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Remedy('Gate','W8')),
                  );
                },
                child: Compass('W8')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Remedy('Gate','S1')),
                  );
                },
                child: Compass('S1')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Remedy('Gate','S2')),
                  );
                },
                child: Compass('S2')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Remedy('Gate','S3')),
                  );
                },
                child: Compass('S3')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Remedy('Gate','S4')),
                  );
                },
                child: Compass('S4')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Remedy('Gate','S5')),
                  );
                },
                child: Compass('S5')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Remedy('Gate','S6')),
                  );
                },
                child: Compass('S6')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Remedy('Gate','S7')),
                  );
                },
                child: Compass('S7')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Remedy('Gate','S8')),
                  );
                },
                child: Compass('S8')
            ),
          ],
        ),
      ),
    );
  }
}

Widget Compass(String name){
  return ListTile(
    leading: FaIcon(FontAwesomeIcons.compass),
    title: Text(name),
  );
}
