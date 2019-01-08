import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Clock',
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      home: Social(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Social extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Positioned(
                left: 15.0,
                top: 5.0,
                child: ClipOval(
                  clipper: CircleClipper(2,4,3),
                  child: Image(image: AssetImage('assets/irene.jpg'),width: 60.0,height: 60.0,)
                ),
              ),
              Positioned(
                left: 100.0,
                child: Text(
                  'Irene',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0
                  )
                ),
              ),
              Positioned(
                left: 100.0,
                top: 20.0,
                child: Text('Yesterday, Ney York')
              ),
              Container(
                padding: const EdgeInsets.only(right: 10.0),
                alignment: Alignment.topRight,
                child: IconButton(
                  color: Theme.of(context).primaryColor,
                  icon: Image(
                    image: AssetImage('assets/three_dot.png'),
                    width: 30.0,
                    height: 30.0,
                    color: Colors.grey,
                  ),
                  onPressed: (){},
                ),
              )
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width/1.1,
            height: MediaQuery.of(context).size.height/2.2,
            child: Card(
              child: Image.asset('assets/irene.jpg'),
              color: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              elevation: 10.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0,right: 30.0,top: 15.0),
            child: Row(
              children: <Widget>[
                Image(
                  image: AssetImage('assets/like.png'), 
                  width: 30.0,
                  height: 30.0,
                ),
                SizedBox(width: 20.0,),
                Image.asset('assets/chat.png'),
                Expanded(child: Container()),
                Image.asset('assets/share.png'),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 20.0,top: 15.0,bottom: 5.0),
            child: Text(
              'Today\'s Birthday',
              style: TextStyle(
                fontSize: 23.0,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height/6,
            child: Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  width: MediaQuery.of(context).size.width/3.5,
                  height: MediaQuery.of(context).size.height/3.5,
                  child: Card(
                    elevation: 5.0,
                    child: Column(
                      children: <Widget>[
                        ClipOval(
                          clipper: CircleClipper(2,2,3),
                          child: Image(image: AssetImage('assets/seulgi.jpg'),width: 55.0,height: 55.0,)
                        ),
                        Text('Seulgi',style: TextStyle(fontWeight: FontWeight.bold),),
                        Text('23 years old',style: TextStyle(color: Colors.grey,fontSize: 11.0)),
                        Container(
                          width: 80.0,
                          height: 20.0,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                            color: Colors.pink[50],
                            onPressed: (){},
                            child: Text('WISH HER',style: TextStyle(fontSize: 10.0,color: Colors.pink[300]),),
                          ),
                        )
                      ],
                    ),
                    color: Colors.white,
                  )
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  width: MediaQuery.of(context).size.width/3.5,
                  height: MediaQuery.of(context).size.height/3.5,
                  child: Card(
                    elevation: 5.0,
                    child: Column(
                      children: <Widget>[
                        ClipOval(
                          clipper: CircleClipper(2,2,3),
                          child: Image(image: AssetImage('assets/seulgi.jpg'),width: 55.0,height: 55.0,)
                        ),
                        Text('Seulgi',style: TextStyle(fontWeight: FontWeight.bold),),
                        Text('23 years old',style: TextStyle(color: Colors.grey,fontSize: 11.0)),
                        Container(
                          width: 80.0,
                          height: 20.0,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                            color: Colors.pink[50],
                            onPressed: (){},
                            child: Text('WISH HER',style: TextStyle(fontSize: 10.0,color: Colors.pink[300]),),
                          ),
                        )
                      ],
                    ),
                    color: Colors.white,
                  )
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  width: MediaQuery.of(context).size.width/3.5,
                  height: MediaQuery.of(context).size.height/3.5,
                  child: Card(
                    elevation: 5.0,
                    child: Column(
                      children: <Widget>[
                        ClipOval(
                          clipper: CircleClipper(2,2,3),
                          child: Image(image: AssetImage('assets/seulgi.jpg'),width: 55.0,height: 55.0,)
                        ),
                        Text('Seulgi',style: TextStyle(fontWeight: FontWeight.bold),),
                        Text('23 years old',style: TextStyle(color: Colors.grey,fontSize: 11.0)),
                        Container(
                          width: 80.0,
                          height: 20.0,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                            color: Colors.pink[50],
                            onPressed: (){},
                            child: Text('WISH HER',style: TextStyle(fontSize: 10.0,color: Colors.pink[300]),),
                          ),
                        )
                      ],
                    ),
                    color: Colors.white,
                  )
                ),
              ],
            ),
          ),
          Container(margin: const EdgeInsets.only(top: 10.0),height: 1.0,width: double.infinity,color: Colors.grey,),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: Image(image: AssetImage('assets/home.png'),color: Colors.lightBlue,width: 40.0,height: 40.0,)),
                Expanded(child: Image(image: AssetImage('assets/people.png'),color: Colors.lightBlue,width: 40.0,height: 40.0)),
                Expanded(child: Image(image: AssetImage('assets/add.png'),width: 40.0,height: 40.0)),
                Expanded(child: Image(image: AssetImage('assets/bell.png'),color: Colors.lightBlue,width: 40.0,height: 40.0)),
                Expanded(child: Image(image: AssetImage('assets/chatchat.png'),color: Colors.lightBlue,width: 40.0,height: 40.0)),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CircleClipper extends CustomClipper<Rect> {

  final int h_d;
  final int v_d;
  final int r_d;

  CircleClipper(this.h_d, this.v_d,this.r_d);

  @override
  Rect getClip(Size size) {
    return Rect.fromCircle(center: Offset(size.width/h_d,size.height/v_d), radius: size.width/r_d);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return true;
  }
}