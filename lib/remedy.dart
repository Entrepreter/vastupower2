import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Remedy extends StatefulWidget {
  @override
  _RemedyState createState() => _RemedyState();
}

class _RemedyState extends State<Remedy> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: remedies(),
    );
  }
}

class remedies extends StatefulWidget {
  @override
  _remediesState createState() => _remediesState();
}

class _remediesState extends State<remedies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DESCRIPTION'),
        backgroundColor: Colors.blue,
      ),

      body: SafeArea(
          child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/bg.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                          '\nGet Insights for career, watch programmes related with career and find work/ job according to that.\n',
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                    Text('* ENHANCER - White/Grey ',
                    style: TextStyle(
                      fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),),
                    Text('* RETENTION OF OWN ENERGY - Blue ',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),),
                    Text('* WEAKENER - Green/Brown ',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),),
                    Text('* DESTRUCTOR - Yellow/Brass ',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),),
                  ],
                ),
              )
          ),
        ),

    );
  }
}
