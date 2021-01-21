import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vastupower/directions.dart';

//class Article extends StatefulWidget {
//  @override
//  _ArticleState createState() => _ArticleState();
//}
//
//class _ArticleState extends State<Article> {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: articles(),
//    );
//  }
//}

class articles extends StatefulWidget {
  @override
  _articlesState createState() => _articlesState();
}

class _articlesState extends State<articles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: InkWell(
            child: Icon(Icons.arrow_back),
            onTap: (){
              Navigator.pop(context);
            },
          ),
          title: Text('OBJECTS'),
          backgroundColor: Colors.blue,
        ),
        body: GridView.count(
          crossAxisCount: 3,
          children: <Widget>[
            InkWell(
              child: Catog(FaIcon(FontAwesomeIcons.bed),'Bedroom'),
              splashColor: Colors.blue,
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Direct('Bedroom')),
                );
              },
            ),

            InkWell(child: Catog(FaIcon(FontAwesomeIcons.tv),'Drawing\nRoom'),
              splashColor: Colors.blue,
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Direct('Drawing Room')),
                );
              },),
            InkWell(child: Catog(FaIcon(FontAwesomeIcons.hamburger),'Dining\nRoom'),
              splashColor: Colors.blue,
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Direct('Dining Room')),
                );
              },),
            InkWell(child: Catog(FaIcon(FontAwesomeIcons.playstation),'Family &\nLounge'),
              splashColor: Colors.blue,
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Direct('Family & Lounge')),
                );
              },),
            InkWell(child: Catog(FaIcon(FontAwesomeIcons.utensilSpoon),'Kitchen'),
              splashColor: Colors.blue,
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Direct('Kitchen')),
                );
              },),
            InkWell(child: Catog(FaIcon(FontAwesomeIcons.toilet),'Toilet'),
              splashColor: Colors.blue,
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Direct('Toilet')),
                );
              },),
            InkWell(child: Catog(FaIcon(FontAwesomeIcons.beer),'Bar'),
              splashColor: Colors.blue,
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Direct('Bar')),
                );
              },),
            InkWell(child: Catog(FaIcon(FontAwesomeIcons.fire),'Pooja Room'),
              splashColor: Colors.blue,
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Direct('Pooja Room')),
                );
              },),
            InkWell(child: Catog(FaIcon(FontAwesomeIcons.book),'Study Room'),
              splashColor: Colors.blue,
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Direct('Study Room')),
                );
              },),
            InkWell(child: Catog(FaIcon(FontAwesomeIcons.male),'Servant\nRoom'),
              splashColor: Colors.blue,
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Direct('Servant Room')),
                );
              },),
            InkWell(child: Catog(FaIcon(FontAwesomeIcons.toiletPaper),'Septic Tank'),
              splashColor: Colors.blue,
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Direct('Septic Tank')),
                );
              },),
            InkWell(child: Catog(FaIcon(FontAwesomeIcons.plus),'Security\nRoom'),
              splashColor: Colors.blue,
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Direct('Security Room')),
                );
              },),
            InkWell(child: Catog(FaIcon(FontAwesomeIcons.store),'Store'),
              splashColor: Colors.blue,
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Direct('Store')),
                );
              },),
            InkWell(child: Catog(FaIcon(FontAwesomeIcons.male),'Guest Room'),
              splashColor: Colors.blue,
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Direct('Guest Room')),
                );
              },),

            InkWell(child: Catog(FaIcon(FontAwesomeIcons.arrowUp),'Staircase'),
              splashColor: Colors.blue,
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Direct('Staircase')),
                );
              },),
            InkWell(child: Catog(FaIcon(FontAwesomeIcons.arrowDown),'Basement'),
              splashColor: Colors.blue,
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Direct('Basement')),
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

