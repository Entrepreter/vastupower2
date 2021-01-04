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
                  launch('https://www.reyanshsoftware.in/vastuapp/files/45devta/AAKASH_ENG.html');
                },
                child: Compass('AAKAASH')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/files/45devta/AAPAHA_ENG.html');
                },
                child: Compass('AAPAHA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/files/45devta/AAPAHAVASTA_ENG.html');
                },
                child: Compass('AAPAHAVASTA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/files/45devta/ADITI_ENG.html');
                },
                child: Compass('ADITI')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/files/45devta/ANIL_ENG.html');
                },
                child: Compass('ANIL')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/files/45devta/ARYAMA_ENG.html');
                },
                child: Compass('ARYAMA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/files/45devta/ASUR_ENG.html');
                },
                child: Compass('ASUR')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/files/45devta/BHALLAT_ENG.html');
                },
                child: Compass('BHALLAT')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/files/45devta/BHRINGRAJ_ENG.html');
                },
                child: Compass('BHRINGRAJ')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/files/45devta/BHUDHAR_ENG.html');
                },
                child: Compass('BHUDHAR')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/files/45devta/BHUJANG_ENG.html');
                },
                child: Compass('BHUJANG')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/files/45devta/BRAHMA_ENG.html');
                },
                child: Compass('BRAHMA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/files/45devta/BRISHA_ENG.html');
                },
                child: Compass('BRISHA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/files/45devta/DAUWARIK_ENG.html');
                },
                child: Compass('DAUWARIK')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/files/45devta/DITI_ENG.html');
                },
                child: Compass('DITI')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/files/45devta/GANDHARA_ENG.html');
                },
                child: Compass('GANDHARA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/files/45devta/INDRA_ENG.html');
                },
                child: Compass('INDRA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/files/45devta/JAYA_ENG.html');
                },
                child: Compass('JAYA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/files/45devta/JAYANT_ENG.html');
                },
                child: Compass('JAYANT')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/files/45devta/MAHENDRA_ENG.html');
                },
                child: Compass('MAHENDRA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/files/45devta/MITRA_ENG.html');
                },
                child: Compass('MITRA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/files/45devta/MRIGAH_ENG.html');
                },
                child: Compass('MRIGAH')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/files/45devta/MUKHYA_ENG.html');
                },
                child: Compass('MUKHYA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/files/45devta/NAGA_ENG.html');
                },
                child: Compass('NAGA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/files/45devta/PAPYAKSHMA_ENG.html');
                },
                child: Compass('PAPYAKSHMA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/files/45devta/PARJANYA_ENG.html');
                },
                child: Compass('PARJANYA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/files/45devta/PITRA_ENG.html');
                },
                child: Compass('PITRA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/files/45devta/PUSHA_ENG.html');
                },
                child: Compass('PUSHA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/files/45devta/PUSHPDANT_ENG.html');
                },
                child: Compass('PUSHPDANT')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/files/45devta/RAJYAKSHMA_ENG.html');
                },
                child: Compass('RAJYAKSHMA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/files/45devta/ROGA_ENG.html');
                },
                child: Compass('ROGA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/files/45devta/RUDRA_ENG.html');
                },
                child: Compass('RUDRA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/files/45devta/SATYA_ENG.html');
                },
                child: Compass('SATYA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/files/45devta/SAVITA_ENG.html');
                },
                child: Compass('SAVITA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/files/45devta/SAVITRA_ENG.html');
                },
                child: Compass('SAVITRA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/files/45devta/SHIKHI_ENG.html');
                },
                child: Compass('SHIKHI')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/files/45devta/SHOSHA_ENG.html');
                },
                child: Compass('SHOSHA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/files/45devta/SOMA_ENG.html');
                },
                child: Compass('SOMA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/files/45devta/SUGREEV_ENG.html');
                },
                child: Compass('SUGREEV')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/files/45devta/SURYA_ENG.html');
                },
                child: Compass('SURYA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/files/45devta/VARUN_ENG.html');
                },
                child: Compass('VARUN')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/files/45devta/VITATHA_ENG.html');
                },
                child: Compass('VITATHA')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/files/45devta/VIVISWAN_ENG.html');
                },
                child: Compass('VIVISWAN')
            ),
            InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  launch('https://www.reyanshsoftware.in/vastuapp/files/45devta/YAMA_ENG.html');
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

