import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Support extends StatefulWidget {
  @override
  _SupportState createState() => _SupportState();
}

class _SupportState extends State<Support> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: support(),
    );
  }
}

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
                  launch('tel:+91-9711232757');
                },
                leading:FaIcon(FontAwesomeIcons.whatsapp,
                  size: 25,
                color: Colors.green,),
                title: Text('+91-9711232757',
                  style: TextStyle(
                      fontSize: 20
                  ),),
              ),
            ),
            Expanded(
              flex: 1,
              child: ListTile(
                onTap: (){
                  launch('mailto:admin@anthemitsol.com');
                },
                leading: Icon(Icons.mail,
                  size: 25,
                color: Colors.red,),
                title: Text('admin@anthemitsol.com',
                  style: TextStyle(
                      fontSize: 20
                  ),),
              ),
            ),
            Expanded(
              flex: 1,
              child: ListTile(
                onTap: (){
                  launch('http://anthemitsol.com/');
                },
                leading: Image.asset('assets/anthem.png',
                height: 30,),
                title: Text('http://anthemitsol.com/',
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
