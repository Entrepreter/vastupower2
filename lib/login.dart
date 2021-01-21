import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'main.dart';
import 'error.dart';
import 'package:firebase_core/firebase_core.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: loginpage(),
    );
  }
}


class loginpage extends StatefulWidget {


  
  @override
  _loginpageState createState() => _loginpageState();
}

enum FormType { login, register }

class _loginpageState extends State<loginpage> {

  @override
  void initState() {
    super.initState();
    Firebase.initializeApp();
  }

  @override
  GlobalKey<FormState> Fkey = new GlobalKey<FormState>();
  FormType Ftype = FormType.login;
  String _email = "";
  String _password = "";

  void toregister() {
    Fkey.currentState.reset();

    setState(() {
      Ftype = FormType.register;
    });
  }

  void tologin() {
    Fkey.currentState.reset();

    setState(() {
      Ftype = FormType.login;
    });
  }


  bool validateandsave() {
    final form = Fkey.currentState;
    if(form.validate()){
      form.save();
      return true;
    }
    else{
      return false;
    }
  }
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomPadding: false,

        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/bgimage.jpg'),
                  fit: BoxFit.fill
              )
          ),
        child : Form(
          key: Fkey,
          child: Column(
              children: Fields() + Buttons()
          ),
        ),
        )
    );
  }

  List<Widget> Fields() {
    if (Ftype == FormType.login) {
      return [
        Expanded(
          child: Image(
            image: AssetImage('assets/appicon.png'),
          ),

        ),

        Expanded(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: TextFormField(

                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,

                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: 'YOUR EMAIL',
                  ),
                  validator: (value) {
                    return value.isEmpty ? 'Email is required' : null;
                  },
                  onSaved: (value) {
                    return _email = value;
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,

                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: 'YOUR PASSWORD',
                  ),
                  validator: (value) {
                    return value.isEmpty ? 'Password is required' : null;
                  },
                  onSaved: (value) {
                    return _password = value;
                  },
                ),
              ),
            ],
          ),
        ),


      ];
    }
    else{
      return [
        Expanded(
          child: Image(
            image: AssetImage('assets/appicon.png'),
          ),

        ),

        Expanded(
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10 ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,

                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          hintText: 'YOUR EMAIL',
                        ),
                        validator: (value) {
                          return value.isEmpty ? 'Email is required' : null;
                        },
                        onSaved: (value) {
                          return _email = value;
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,

                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          hintText: 'YOUR PASSWORD',
                        ),
                        validator: (value) {
                          return value.isEmpty ? 'Password is required' : null;
                        },
                        onSaved: (value) {
                          return _password = value;
                        },
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only( left: 10),
                      child: TextFormField(

                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,

                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          hintText: 'YOUR NAME',
                        ),
                        validator: (value) {
                          return value.isEmpty ? 'Name is required' : null;
                        },
                        onSaved: (value) {
                          return name = value;
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,

                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          hintText: 'YOUR PHONE NO.',
                        ),
                        validator: (value) {
                          return value.isEmpty ? 'Phone no. is required' : null;
                        },
                        onSaved: (value) {
                          return phoneno = value;
                        },
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),

      ];
    }
  }

  String  name;
  String phoneno;

  List<Widget> Buttons() {
    if (Ftype == FormType.login) {
      return [
        RaisedButton(
          child: Text('LOGIN',
            style: TextStyle(
                color: Colors.red
            ),),
          color: Colors.white,
          onPressed: () {
            SignIn();
          },
        ),
        FlatButton(
          child: Text('New User? Create an account.',
            style: TextStyle(
                color: Colors.white           ),),
          onPressed: () {
            toregister();
          },

        )
      ];
    }
    else {
      return [
        RaisedButton(
          child: Text('SIGNUP',
            style: TextStyle(
                color: Colors.red
            ),),
          color: Colors.white,
          onPressed: () {
            SignUp();
          },
        ),
        FlatButton(
          child: Text('Already a User? Login.',
            style: TextStyle(
                color: Colors.white
            ),),
          onPressed: () {
            tologin();
          },

        )
      ];
    }
  }
  Error error= new Error();

  Future<void> SignIn() async {
    final formState = Fkey.currentState;

    if (formState.validate()) {
      formState.save();
      try {
       UserCredential user = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: _email, password: _password);
        print('Im in');

        Navig();
      }
      catch (e) {
        error.showerror(context, 'Error', e.toString());
        print(e.message);
      }
    }
  }

  void Navig() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Compass1(_email)));
  }

  Future<void> SignUp() async {
    final formState = Fkey.currentState;

    if (formState.validate()) {
      formState.save();
      try {
        UserCredential user = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: _email, password: _password);
        print('Im in');
        Navig();
      }
      catch (e) {
        error.showerror(context, 'Error', e.toString());
        print(e.message);
      }
    }



    CollectionReference doc = Firestore.instance.collection("users");
    doc.add
    ({
      "username": _email,
      "paid" : false,
      "startTime" : Currenttime(),
      "endTime" : Endtime(),
      "name" : name,
      "phone no": phoneno
    });

  }

}

DateTime today;

DateTime Currenttime(){
   today = new DateTime.now();
  return today;
}

DateTime Endtime(){
  DateTime end = today.add(Duration(days: 3));
  return end;
}