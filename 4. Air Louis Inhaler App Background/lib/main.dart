import 'package:air_louis_inhaler/background_painter.dart';
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
	    title: 'Air Louis Inhaler App',
	    home: FancyApp(),
	    debugShowCheckedModeBanner: false,
    );
  }
}

class FancyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

  	final width = MediaQuery.of(context).size.width;
  	final height = MediaQuery.of(context).size.height;


    return Scaffold(
	    body: Column(
	      children: <Widget>[
	        Stack(
				    children: <Widget>[
				      Container(
						    color: Colors.purple,
						    height: 500.0,
						    width: double.infinity,
						    child: CustomPaint(
									painter: BackgroundPainter(),
						    ),
					    ),
					    Positioned(
						    top: height/6.1,
						    left: width/6,
						    child: Column(
							    crossAxisAlignment: CrossAxisAlignment.start,
							    children: <Widget>[
							      Text(
									    'Hi,',
									    style: TextStyle(
										    color: Colors.white,
										    fontSize: 40.0,
										    fontWeight: FontWeight.w300
									    ),
								    ),
								    Text(
									    'John',
									    style: TextStyle(
										    color: Colors.white,
										    fontSize: 40.0,
										    fontWeight: FontWeight.bold
									    ),
								    )
							    ],
						    ),
					    ),
					    Positioned(
						    top: height/4,
						    right: width/8,
						    child: Column(
							    crossAxisAlignment: CrossAxisAlignment.start,
							    children: <Widget>[
							      Text(
									    'Canister\nDoses',
									    style: TextStyle(
										    color: Colors.white,
										    fontWeight: FontWeight.w300
									    ),
								    ),
								    SizedBox(height: 10.0,),
								    Text(
									    '167',
									    style: TextStyle(
										    color: Colors.white,
										    fontWeight: FontWeight.w400,
										    letterSpacing: -4.0,
										    fontSize: 40.0
									    ),
								    ),
								    SizedBox(height: 50.0,),
								    Text(
									    'Next dose\nwithin',
									    style: TextStyle(
										    color: Colors.white,
										    fontWeight: FontWeight.w300
									    ),
								    ),
								    SizedBox(height: 10.0,),
								    Text(
									    '3:23',
									    style: TextStyle(
										    color: Colors.white,
										    fontWeight: FontWeight.w400,
										    fontSize: 40.0
									    ),
								    ),
								    SizedBox(height: 30.0,),
								    Text(
									    'before\n11:00 am',
									    style: TextStyle(
										    color: Colors.deepOrange,
										    fontWeight: FontWeight.w500
									    ),
								    )
							    ],
						    ),
					    )
				    ],
	        ),
		      SizedBox(height: 50.0),
		      Column(
		        children: <Widget>[
		          Padding(
		            padding: const EdgeInsets.symmetric(horizontal: 40.0),
		            child: Row(
					      crossAxisAlignment: CrossAxisAlignment.start,
					      children: <Widget>[
					        Column(
							      crossAxisAlignment: CrossAxisAlignment.start,
							      children: <Widget>[
								      Text(
									      'Daily Asthma',
									      style: TextStyle(
										      color: Colors.black,
										      fontWeight: FontWeight.w400,
										      letterSpacing: -2.0,
										      fontSize: 35.0
									      ),
								      ),
								      Text(
									      'Forecast',
									      style: TextStyle(
										      color: Colors.black,
										      fontWeight: FontWeight.bold,
										      letterSpacing: -2.0,
										      fontSize: 35.0
									      ),
								      ),
								      SizedBox(height: 10.0),
								      Text(
									      'for San Francisco, CA',
									      style: TextStyle(
										      color: Colors.black.withOpacity(0.3),
										      fontWeight: FontWeight.bold,
										      fontSize: 15.0
									      ),
								      ),
								      SizedBox(height: 20.0,),
							      ],
						      ),
						      Spacer(),
						      IconButton(icon: Icon(Icons.info_outline,color: Colors.black.withOpacity(0.2),)),
						      SizedBox(width: 10.0,)
					      ],
		            ),
		          ),
		          Container(
			          margin: const EdgeInsets.only(left: 40.0,right: 60.0),
			          width: width,
			          height: 35.0,
			          decoration: BoxDecoration(
				          borderRadius: BorderRadius.all(Radius.circular(3.0)),
				          gradient: LinearGradient(
					          colors: [Color(0xFF42eef4),Color(0XFFf4be33),Color(0xFFef8fd9)]
				          )
			          ),
			          child: Padding(
			            padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
			            child: Text(
				          'Good',
				          style: TextStyle(color: Colors.white),
			            ),
			          ),
		          )
		        ],
		      ),
	      ],
	    ),
    );
  }
}

