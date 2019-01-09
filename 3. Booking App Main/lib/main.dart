import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
	runApp(App());
	SystemChrome.setEnabledSystemUIOverlays([]);
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
	    title: 'Booking App',
	    debugShowCheckedModeBanner: false,
	    home: BookingApp(),
	    theme: ThemeData(
		    scaffoldBackgroundColor: Colors.white,
		    primaryColor: Color(0xFF171e77)
	    ),
    );
  }
}

class BookingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
	    body: Column(
		    children: <Widget>[
		    	SizedBox(height: 50.0,),
		    	Padding(
		    	  padding: const EdgeInsets.symmetric(horizontal: 40.0),
		    	  child: Row(
				      crossAxisAlignment: CrossAxisAlignment.baseline,
				    textBaseline: TextBaseline.alphabetic,
				    children: <Widget>[
				    	Expanded(
						    child: Text(
							    'Events',
							    style: TextStyle(
								    color: Theme.of(context).primaryColor,
								    fontSize: 40.0,
								    fontWeight: FontWeight.bold,
							    ),
						    ),
					    ),
					    Text(
						    'filters',
						    style: TextStyle(
							    color: Theme.of(context).primaryColor,
							    fontSize: 20.0,
							    fontWeight: FontWeight.bold,
						    ),
					    ),
					    SizedBox(width: 13.0),
					    IconButton(
						    icon: Image(
							    image: AssetImage('assets/filter.png'),
							    color: Theme.of(context).primaryColor,
						    ),
					    )
				    ],
			    ),
		    	),
			    SizedBox(height: 50.0),
			    Padding(
			      padding: const EdgeInsets.only(left: 40.0),
			      child: Row(
				    children: <Widget>[
				    	Text(
						    'Popular',
						    style: TextStyle(
							    color: Theme.of(context).primaryColor,
							    fontSize: 25.0,
							    fontWeight: FontWeight.bold
						    ),
					    ),
					    SizedBox(width: 20.0),
					    Container(
						    width: 60.0,
						    height: 1.0,
						    color: Theme.of(context).primaryColor.withOpacity(0.4),
					    )
				    ],
			      ),
			    ),
			    Container(
				      padding: const EdgeInsets.only(left: 40.0,top: 20.0),
				      height: 250.0,
			      child: ListView(
				      scrollDirection: Axis.horizontal,
					    children: <Widget>[
					      _cardView(
						      'assets/seulgi.jpg',
						      Theme.of(context).primaryColor.withOpacity(0.8),
						      Colors.white,
						      Colors.white,
						      'Seulgi\nIs Very go...', 'Tue, Nov 20', 120
					      ),
					      SizedBox(width: 10.0),
						    _cardView(
							    'assets/seulgi2.jpg',
							    Colors.lightBlueAccent,
							    Colors.white,
							    Colors.white,
							    'Kang\nSeulgi',
							    'Wed, Nov 23',94
						    ),
					      SizedBox(width: 10.0),
					      _cardView(
						      'assets/seulgi2.jpg',
						      Colors.lightBlueAccent,
						      Colors.white,
						      Colors.white,
						      'Kang\nSeulgi',
						      'Wed, Nov 23',94
					      )
					    ],
			      ),
			    ),
			    SizedBox(height: 15.0),
			    Padding(
				    padding: const EdgeInsets.only(left: 40.0),
				    child: Row(
					    children: <Widget>[
						    Text(
							    'Trending',
							    style: TextStyle(
								    color: Theme.of(context).primaryColor,
								    fontSize: 25.0,
								    fontWeight: FontWeight.bold
							    ),
						    ),
						    SizedBox(width: 20.0),
						    Container(
							    width: 60.0,
							    height: 1.0,
							    color: Theme.of(context).primaryColor.withOpacity(0.4),
						    )
					    ],
				    ),
			    ),
			    Container(
				    padding: const EdgeInsets.only(left: 40.0,top: 20.0),
				    height: 250.0,
				    child: ListView(
					    scrollDirection: Axis.horizontal,
					    children: <Widget>[
						    _cardView2(
							    'assets/seulgi.jpg',
							    Colors.grey.withOpacity(0.5),
							    Theme.of(context).primaryColor.withOpacity(0.8),
							    'Kang\nSeulgi',
							    'Mon, Nov 19'
						    ),
						    SizedBox(width: 10.0),
						    _cardView2(
							    'assets/seulgi.jpg',
							    Colors.orange.withOpacity(0.8),
							    Theme.of(context).primaryColor.withOpacity(0.8),
							    'Kang\nSeulgi',
							    'Mon, Nov 19'
						    ),
						    SizedBox(width: 10.0),
						    _cardView2(
							    'assets/seulgi.jpg',
							    Colors.grey.withOpacity(0.5),
							    Theme.of(context).primaryColor.withOpacity(0.8),
							    'Kang\nSeulgi',
							    'Mon, Nov 19'
						    ),
					    ],
				    ),
			    ),
		    ],
	    ),
    );
  }

  Widget _cardView2(String imgUrl, Color shadowColor,Color color,String name,String day) {
	  return Stack(
		  children: <Widget>[
			  Positioned(
				  right: 10.0,
			    child: Container(
				  width: 150.0,
				  height: 210.0,
				  child: Card(
					  color: shadowColor,
					  elevation: 3.0,
				  ),
			    ),
			  ),
			  Container(
				  width: 150.0,
				  height: 210.0,
				  child: Card(
					  color: Colors.white,
					  elevation: 3.0,
				  ),
			  ),
			  Padding(
				  padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 30.0),
				  child: Column(
					  crossAxisAlignment: CrossAxisAlignment.start,
					  children: <Widget>[
						  Container(
							  decoration: BoxDecoration(
								  color: Colors.red,
								  borderRadius: BorderRadius.all(Radius.circular(20.0)),
							  ),
						    child: Image(
								  image: AssetImage(imgUrl),
								  width: 50.0,
								  height: 50.0,
						    ),
						  ),
						  SizedBox(height: 20.0,),
						  Text(
							  name,
							  style: TextStyle(
								  color: color,
								  fontSize: 15.0,
								  fontWeight: FontWeight.bold
							  ),
						  ),
						  SizedBox(height: 10.0,),
						  Text(
							  day,
							  style: TextStyle(
								  color: color.withOpacity(0.4),
								  fontSize: 13.0
							  ),
						  ),
						  SizedBox(height: 10.0,),
						  Row(
							  children: <Widget>[
								  Image(
									  image: AssetImage('assets/heart.png'),
									  color: color,
									  width: 25.0,
									  height: 25.0,
								  ),
								  SizedBox(width: 30.0,),
								  Text(
									  'More',
									  style: TextStyle(
										  color: color,
										  fontWeight: FontWeight.w500
									  ),
								  )
							  ],
						  )
					  ],
				  ),
			  )
		  ],
	  );
  }


  Widget _cardView(String imgUrl, Color color, Color textColor, Color iconColor, String mainText, String day, int price) {
	  return Stack(
		  children: <Widget>[
			  Container(
				  width: 150.0,
				  height: 210.0,
				  child: Card(
					  color: color,
					  elevation: 3.0,
				  ),
			  ),
			  Padding(
				  padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 30.0),
				  child: Column(
					  crossAxisAlignment: CrossAxisAlignment.start,
					  children: <Widget>[
						  Image(
							  image: AssetImage(imgUrl),
							  width: 50.0,
							  height: 50.0,
						  ),
						  SizedBox(height: 20.0,),
						  Text(
							  mainText,
							  style: TextStyle(
								  color: textColor,
								  fontWeight: FontWeight.w400
							  ),
						  ),
						  SizedBox(height: 10.0,),
						  Text(
							  day,
							  style: TextStyle(
								  color: Colors.white.withOpacity(0.4),
								  fontSize: 13.0
							  ),
						  ),
						  SizedBox(height: 10.0,),
						  Row(
							  children: <Widget>[
								  Image(
									  image: AssetImage('assets/heart.png'),
									  color: iconColor,
									  width: 25.0,
									  height: 25.0,
								  ),
								  SizedBox(width: 20.0,),
								  Text(
									  '\$ $price+',
									  style: TextStyle(
										  color: textColor,
										  fontWeight: FontWeight.w500
									  ),
								  )
							  ],
						  )
					  ],
				  ),
			  )
		  ],
	  );
  }
}

