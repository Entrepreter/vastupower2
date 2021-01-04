import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

//class Subscribe extends StatefulWidget {
//  @override
//  _SubscribeState createState() => _SubscribeState();
//}
//
//class _SubscribeState extends State<Subscribe> {
//
//
//
//    @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: subscribe(),
//    );
//  }
//}

class subscribe extends StatefulWidget {
  
  subscribe(this.username) : super();
  String username;

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

  void PaymentSuccess( PaymentSuccessResponse response) async {
    Fluttertoast.showToast(
        msg: "SUCCESS: " + response.paymentId, timeInSecForIosWeb: 4);




  }

  void PaymentError(PaymentFailureResponse response) {
    Fluttertoast.showToast(
        msg: "ERROR: " + response.code.toString() + " - " + response.message,
        timeInSecForIosWeb: 4);
  }

  void ExternalWallet() {
    print('External Wallet');
  }

  @override
  void dispose() {
    razorpay.clear();
    super.dispose();
  }

  void Payment() {
    var options = {
      'key': 'rzp_live_0cNNgEmj8Hvl62',
      'amount': 145000,
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
        leading: InkWell(
          child: Icon(Icons.arrow_back),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),

      body: Container(
          child: StreamBuilder(
              stream: Firestore.instance
                  .collection("users").where(
                  "username", isEqualTo: widget.username)
                  .snapshots(),
              builder: (context, snapshot) {
                // ignore: missing_return
                return ListView.builder(
                    itemCount: 1,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      if (snapshot.data == null)
                        return CircularProgressIndicator();
                      DocumentSnapshot obj = snapshot.data.documents[0];
                      fees = obj["paid"];
                      print(fees);
                      return SafeArea(
                        child: Container(
                            child: (fees) ?
                            Container(
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width,
                              height: MediaQuery
                                  .of(context)
                                  .size
                                  .height-70,
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
                            SafeArea(
                              child: Container(
                                  width: MediaQuery
                                      .of(context)
                                      .size
                                      .width,
                                  height: MediaQuery
                                      .of(context)
                                      .size
                                      .height-70,
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
                                      Text(
                                        'You have not Subscribed to the annual pack \n Subscribe at 1450/- for a year',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Lora',
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      RaisedButton(
                                        onPressed: () {
                                          Payment();

                                        },
                                        child: Text('Subscribe'),
                                        color: Colors.yellow,
                                      )
                                    ],)),
                            )
                        ),
                      );
                    });
              }

          )
      ),
    );
  }



}