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
                  launch('https://www.reyanshsoftware.in/vastuapp/chapter1.pdf');
                },
                child: Compass('Chapter 1')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/chapter2.pdf');
                },
                child: Compass('Chapter 2')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/chapter3.pdf');
                },
                child: Compass('Chapter 3')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/chapter4.pdf');
                },
                child: Compass('Chapter 4')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/chapter5.pdf');
                },
                child: Compass('Chapter 5')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/chapter6.pdf');
                },
                child: Compass('Chapter 6')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/chapter7.pdf');
                },
                child: Compass('Chapter 7')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/chapter8.pdf');
                },
                child: Compass('Chapter 8')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/chapter9.pdf');
                },
                child: Compass('Chapter 9')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/chapter10.pdf');
                },
                child: Compass('Chapter 10')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/chapter11.pdf');
                },
                child: Compass('Chapter 11')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/chapter12.pdf');
                },
                child: Compass('Chapter 12')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/chapter13.pdf');
                },
                child: Compass('Chapter 13')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/chapter14.pdf');
                },
                child: Compass('Chapter 14')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/chapter15.pdf');
                },
                child: Compass('Chapter 15')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/chapter16.pdf');
                },
                child: Compass('Chapter 16')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/chapter17.pdf');
                },
                child: Compass('Chapter 17')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/chapter18.pdf');
                },
                child: Compass('Chapter 18')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/chapter19.pdf');
                },
                child: Compass('Chapter 19')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/chapter20.pdf');
                },
                child: Compass('Chapter 20')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/chapter21.pdf');
                },
                child: Compass('Chapter 21')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/chapter22.pdf');
                },
                child: Compass('Chapter 22')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/chapter23.pdf');
                },
                child: Compass('Chapter 23')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/chapter24.pdf');
                },
                child: Compass('Chapter 24')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/chapter25.pdf');
                },
                child: Compass('Chapter 25')
            ),

            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/chapter26.pdf');
                },
                child: Compass('Chapter 26')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/chapter27.pdf');
                },
                child: Compass('Chapter 27')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/chapter28.pdf');
                },
                child: Compass('Chapter 28')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/chapter29.pdf');
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
