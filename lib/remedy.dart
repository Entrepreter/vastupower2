import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vastupower/objects.dart';

//class Remedy extends StatefulWidget {
//
//  Remedy(this.object,this.direction) : super();
//
//  String object,direction;
//
//  @override
//  _RemedyState createState() => _RemedyState();
//}
//
//class _RemedyState extends State<Remedy> {
//  @override
//  void initState() {
//    super.initState();
//    Firebase.initializeApp().whenComplete(() {
//      //print("completed");
//      setState(() {
//
//      });
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//
//    return MaterialApp(
//      home: remedies(widget.object,widget.direction),
//    );
//  }
//}

class remedies extends StatefulWidget {

  remedies(this.object,this.direction) : super();

  String object,direction;

   @override
  _remediesState createState() => _remediesState();
}

class _remediesState extends State<remedies> {
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
        title: Text('DESCRIPTION'),
        backgroundColor: Colors.blue,
      ),

    body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.white,Colors.orange],
          begin: Alignment.topCenter,
          stops: [0.01,0.8]
        )
      ),
      child: StreamBuilder(
        stream: Firestore.instance
            .collection(widget.object)
            .where("Dir", isEqualTo: widget.direction)
            .snapshots(),
        builder: (context, snapshot){
          try {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  DocumentSnapshot obj = snapshot.data.documents[0];
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(

                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        Text(obj["Desc"],
                          style: TextStyle(
                              fontSize: 20
                          ),),
                        SizedBox(
                          height: 20,
                        ),
                        Text(obj["Rem"],
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),)
                      ],
                    ),
                  );
                },
              );
            }
            else {
              return Center(child: Text('Loading....',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),));
            }
          }
          catch(e){
            return Center(child: Text('No DATA',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),));
          }
      }
      ),
    )
    );
    }
  }


