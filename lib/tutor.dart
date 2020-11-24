import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Tutor extends StatefulWidget {
  @override
  _TutorState createState() => _TutorState();
}

class _TutorState extends State<Tutor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TUTOR'),
        leading: InkWell(
          child: Icon(Icons.arrow_back),
          onTap: (){
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: ListView(

          children: [

            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/chapter-1');
                },
                child: Compass('Chapter 1')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/chapter-2');
                },
                child: Compass('Chapter 2')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/chapter-3');
                },
                child: Compass('Chapter 3')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/chapter-4');
                },
                child: Compass('Chapter 4')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/chapter-5');
                },
                child: Compass('Chapter 5')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/chapter-6');
                },
                child: Compass('Chapter 6')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/chapter-7');
                },
                child: Compass('Chapter 7')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/chapter-8');
                },
                child: Compass('Chapter 8')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/chapter-9');
                },
                child: Compass('Chapter 9')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/chapter-10');
                },
                child: Compass('Chapter 10')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/chapter-11');
                },
                child: Compass('Chapter 11')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/chapter-12');
                },
                child: Compass('Chapter 12')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/chapter-13');
                },
                child: Compass('Chapter 13')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/chapter-14');
                },
                child: Compass('Chapter 14')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/chapter-15');
                },
                child: Compass('Chapter 15')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/chapter-16');
                },
                child: Compass('Chapter 16')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/chapter-17');
                },
                child: Compass('Chapter 17')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/chapter-18');
                },
                child: Compass('Chapter 18')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/chapter-19');
                },
                child: Compass('Chapter 19')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/chapter-20');
                },
                child: Compass('Chapter 20')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/chapter-21');
                },
                child: Compass('Chapter 21')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/chapter-22');
                },
                child: Compass('Chapter 22')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/chapter-23');
                },
                child: Compass('Chapter 23')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/chapter-24');
                },
                child: Compass('Chapter 24')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/chapter-25');
                },
                child: Compass('Chapter 25')
            ),

            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/chapter-26');
                },
                child: Compass('Chapter 26')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/chapter-27');
                },
                child: Compass('Chapter 27')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/chapter-28');
                },
                child: Compass('Chapter 28')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/chapter-29');
                },
                child: Compass('Chapter 29')
            ),
          ],
        ),
      ),
    );
  }
}

Widget Compass(String name){
  return ListTile(
    leading: FaIcon(FontAwesomeIcons.book),
    title: Text(name),
  );
}
