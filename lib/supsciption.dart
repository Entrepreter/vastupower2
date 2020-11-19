import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class Subscribe extends StatefulWidget {
  @override
  _SubscribeState createState() => _SubscribeState();
}

class _SubscribeState extends State<Subscribe> {



    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: subscribe(),
    );
  }
}

class subscribe extends StatefulWidget {

  @override
  _subscribeState createState() => _subscribeState();
}

class _subscribeState extends State<subscribe> {

  bool fees;
  Razorpay razorpay = Razorpay();

  @override
  void initState() {
    super.initState();
    Firebase.initializeApp().whenComplete(() {
      //print("completed");
      setState(() {

      });
    });
    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, PaymentSuccess);
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, PaymentError);
    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, ExternalWallet);
  }

  void PaymentSuccess(){
    //print('success');
    setState(() {
      fees=true;

    });
   // Firestore.instance.collection("subsciption").document().update(data)
  }

  void PaymentError(){
    print('error');
  }

  void ExternalWallet(){
  print('External Wallet');
  }

  @override
  void dispose() {
    razorpay.clear();
    super.dispose();
  }
void Payment() {
  var options = {
    'key': 'rzp_test_UerTR8J9A3oLKP',
    'amount': 200000,
    'name': 'VASTU POWER',
    'description': 'Payment for 1 year subscription',
//    'prefill': {
//      'contact': '8888888888',
//      'email': 'test@razorpay.com'
//    }
  };
  razorpay.open(options);
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Subscription'),
      ),

      body:Container(
        child : StreamBuilder(
      stream: Firestore.instance
          .collection("subscription")
          .snapshots(),
          builder :(context, snapshot){
        // ignore: missing_return
        return ListView.builder(
            itemCount: 1,
            shrinkWrap: true,
            itemBuilder: (context,index){
          if(snapshot.data == null) return CircularProgressIndicator();
          DocumentSnapshot obj = snapshot.data.documents[0];
          fees=obj["fees"];
          print(fees);
          return Container(
            child: (fees)?
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/bgimage.jpg'),
                      fit: BoxFit.fill
                  )
              ),
              child: Center(
                child: Text('You are already subscribed',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Lora',
                  ),),
              ),
            )

                :
            Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/bgimage.jpg'),
                        fit: BoxFit.fill
                    )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('You have not Subscribed to the annual pack \n Subscribe at 2000/- for a year',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Lora',
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RaisedButton(
                      onPressed: (){
                        Payment();
                        
                      },
                      child: Text('Subscribe'),
                      color: Colors.yellow,
                    )
                  ],))
          );


        });
          }

        )
      ),
    );
  }
}