import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vastupower/remedy.dart';


class Direction extends StatelessWidget {
  Direction(this.object) : super();
  String object;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Direct(object),
    );
  }
}


class Direct extends StatefulWidget {

  Direct(this.object) : super();
  String object;

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
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Remedy(widget.object,'North')),
                  );
                },
                child: Compass('North')
            ),
            InkWell(
              splashColor: Colors.blue,
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Remedy(widget.object,'East')),
                );
              },
              child: Compass('East')
              ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Remedy(widget.object,'South')),
                  );
                },
                child: Compass('South')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Remedy(widget.object,'West')),
                  );
                },
                child: Compass('West')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Remedy(widget.object,'ENE')),
                  );
                },
                child: Compass('ENE')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Remedy(widget.object,'NE')),
                  );
                },
                child: Compass('NE')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Remedy(widget.object,'NNE')),
                  );
                },
                child: Compass('NNE')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Remedy(widget.object,'NNW')),
                  );
                },
                child: Compass('NNW')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Remedy(widget.object,'NW')),
                  );
                },
                child: Compass('NW')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Remedy(widget.object,'WNW')),
                  );
                },
                child: Compass('WNW')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Remedy(widget.object,'WSW')),
                  );
                },
                child: Compass('WSW')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Remedy(widget.object,'SW')),
                  );
                },
                child: Compass('SW')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Remedy(widget.object,'SSW')),
                  );
                },
                child: Compass('SSW')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Remedy(widget.object,'SSE')),
                  );
                },
                child: Compass('SSE')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Remedy(widget.object,'SE')),
                  );
                },
                child: Compass('SE')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Remedy(widget.object,'ESE')),
                  );
                },
                child: Compass('ESE')
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