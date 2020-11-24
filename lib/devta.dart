import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Devta extends StatefulWidget {
  @override
  _DevtaState createState() => _DevtaState();
}

class _DevtaState extends State<Devta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DEVTA'),
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
                  launch('http://anthemitsol.com/aakash');
                },
                child: Compass('AAKAASH')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/aapaha');
                },
                child: Compass('AAPAHA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/aapahavatsa/');
                },
                child: Compass('AAPAHAVASTA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/aditi');
                },
                child: Compass('ADITI')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/anil');
                },
                child: Compass('ANIL')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/aryama');
                },
                child: Compass('ARYAMA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/asur');
                },
                child: Compass('ASUR')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/bhallat');
                },
                child: Compass('BHALLAT')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/bhringraj');
                },
                child: Compass('BHRINGRAJ')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/bhudhar');
                },
                child: Compass('BHUDHAR')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/bhujang');
                },
                child: Compass('BHUJANG')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/brahma');
                },
                child: Compass('BRAHMA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/brisha');
                },
                child: Compass('BRISHA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/dauwarik');
                },
                child: Compass('DAUWARIK')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/diti');
                },
                child: Compass('DITI')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/gandhara');
                },
                child: Compass('GANDHARA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/indra');
                },
                child: Compass('INDRA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/jaya');
                },
                child: Compass('JAYA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/jayant');
                },
                child: Compass('JAYANT')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/mahendra');
                },
                child: Compass('MAHENDRA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/mitra');
                },
                child: Compass('MITRA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/mrigah');
                },
                child: Compass('MRIGAH')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/mukhya');
                },
                child: Compass('MUKHYA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/naga');
                },
                child: Compass('NAGA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/papyakshma');
                },
                child: Compass('PAPYAKSHMA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/parjanya');
                },
                child: Compass('PARJANYA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/pitra');
                },
                child: Compass('PITRA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/pusha');
                },
                child: Compass('PUSHA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/pushpdant');
                },
                child: Compass('PUSHPDANT')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/rajyakshma');
                },
                child: Compass('RAJYAKSHMA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/roga');
                },
                child: Compass('ROGA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/rudra');
                },
                child: Compass('RUDRA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/satya');
                },
                child: Compass('SATYA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/savita');
                },
                child: Compass('SAVITA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/savitra');
                },
                child: Compass('SAVITRA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/shikhi');
                },
                child: Compass('SHIKHI')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/shosha');
                },
                child: Compass('SHOSHA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/soma');
                },
                child: Compass('SOMA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/sugreev');
                },
                child: Compass('SUGREEV')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/surya');
                },
                child: Compass('SURYA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/varun');
                },
                child: Compass('VARUN')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/vitatha');
                },
                child: Compass('VITATHA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/viviswan');
                },
                child: Compass('VIVISWAN')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('http://anthemitsol.com/yama');
                },
                child: Compass('YAMA')
            ),

          ],
        ),
      ),
    );
  }
}

Widget Compass(String name){
  return ListTile(
    leading: FaIcon(FontAwesomeIcons.star),
    title: Text(name),
  );
}

