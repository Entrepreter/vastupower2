import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

//class Support extends StatefulWidget {
//  @override
//  _SupportState createState() => _SupportState();
//}
//
//class _SupportState extends State<Support> {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: support(),
//    );
//  }
//}

class support extends StatefulWidget {
  @override
  _supportState createState() => _supportState();
}

class _supportState extends State<support> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HELPDESK'),
        leading: InkWell(
          child: Icon(Icons.arrow_back),
          onTap: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
//            SizedBox(
//              height: 20,
//            ),
            Expanded(
                flex:4,child: Image.asset('assets/support.png')),
            Expanded(
              child: Text('FOR ANY KIND OF SUPPORT & \nQUERY, PLEASE CONTACT US AT',
              style: TextStyle(
                fontFamily: 'Lora',
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(
              child: Divider(
                color: Colors.blue,
              ),
            ),
            Expanded(
              flex: 1,
              child: ListTile(
                onTap: (){
                  launch('tel:+91-9582076355');
                },
                leading:FaIcon(FontAwesomeIcons.whatsapp,
                  size: 25,
                color: Colors.green,),
                title: Text('+91-9582076355',
                  style: TextStyle(
                      fontSize: 20
                  ),),
              ),
            ),
            Expanded(
              flex: 1,
              child: ListTile(
                onTap: (){
                  launch('mailto:reyanshsoftware.in@gmail.com');
                },
                leading: Icon(Icons.mail,
                  size: 25,
                color: Colors.red,),
                title: Text('reyanshsoftware.in@gmail.com',
                  style: TextStyle(
                      fontSize: 20
                  ),),
              ),
            ),
            Expanded(
              flex: 1,
              child: ListTile(
                onTap: (){
                  launch('https://www.reyanshsoftware.in/');
                },
                leading: Image.asset('assets/appicon1.png',
                height: 30,),
                title: Text('www.reyanshsoftware.in/',
                  style: TextStyle(
                      fontSize: 20
                  ),),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
