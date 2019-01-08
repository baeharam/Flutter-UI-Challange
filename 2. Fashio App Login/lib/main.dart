import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Challenge',
      debugShowCheckedModeBanner: false,
      home: Login(),
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
    );
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {

    final phone_width = MediaQuery.of(context).size.width;
    final phone_height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            width: phone_width,
            height: phone_height,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Colors.pink[100],Colors.blue[500]],
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
                  image: AssetImage('assets/images/seulgi.jpg')
                )
              ),
            ),
          ),
          Positioned(
            top: phone_height/6,
            width: phone_width,
            child: Text(
              'F A S H I O',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.w500
              ),
            ),
          ),
          ListView(
            children: <Widget>[
              SizedBox(height: phone_height/2),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(3.0))
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: 'USERNAME OR EMAIL',
                            labelStyle: TextStyle(color: Colors.grey[500], fontWeight: FontWeight.bold),
                            border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(3.0))
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: 'PASSWORD',
                            labelStyle: TextStyle(color: Colors.grey[500], fontWeight: FontWeight.bold),
                            border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Positioned(
            top: phone_height/1.45,
            width: phone_width,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              height: 48.0,
              child: RaisedButton(
                elevation: 5.0,
                color: Colors.black,
                child: Text(
                  'L  O  G  I  N',
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),
                ),
                onPressed: (){},
              ),
            ),
          ),
          Positioned(
            top: phone_height/1.3,
            width: phone_width,
            child: FlatButton(
              child: Text(
                'FORGOT PASSWORD?',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                ),
              ),
              onPressed: (){},
            ),
          ),
          Positioned(
            top: phone_height/1.08,
            width: phone_width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'DON\'T HAVE AN ACCOUNT?',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400
                  ),
                ),
                FlatButton(
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  onPressed: (){},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

