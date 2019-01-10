import 'dart:math';

import 'package:my_page/profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_page/profile_model.dart';



void main(){
	SystemChrome.setEnabledSystemUIOverlays([]);
	runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
	    title: 'Personal Page',
	    debugShowCheckedModeBanner: false,
	    home: PersonalPage(),
    );
  }
}

class PersonalPage extends StatefulWidget {
  @override
  _PersonalPageState createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> with SingleTickerProviderStateMixin {

	final names = ['Juhyun', 'Seulgi', 'Seungwan', 'Yeri', 'Suyoung'];
	final images = [
		'assets/irene_profile.jpg',
		'assets/seulgi_profile.jpg',
		'assets/wendy_profile.jpg',
		'assets/yeri_profile.jpg',
		'assets/joy_profile.jpg'
	];

	final List<ProfileModel> profiles = [
		ProfileModel(imagePath: 'assets/irene.jpg',name: 'Bae Ju-Hyun',
			location: 'Seoul, Korea',birthday: '1995.1',status: 'Singer',musicType: 'K-pop, Dance pop, Hip-hop',
			introduction: 'Now a member of Redvelvet, a women\'s music group owned by SM Entertainment',index: 0),
		ProfileModel(imagePath: 'assets/seulgi.jpg',name: 'Kang Seul-gi',
			location: 'Seoul, Korea',birthday: '1995.1',status: 'Singer',musicType: 'K-pop, Dance pop, Hip-hop',
			introduction: 'Now a member of Redvelvet, a women\'s music group owned by SM Entertainment',index: 1),
		ProfileModel(imagePath: 'assets/wendy.jpg',name: 'Son Seung-wan',
			location: 'Seoul, Korea',birthday: '1995.1',status: 'Singer',musicType: 'K-pop, Dance pop, Hip-hop',
			introduction: 'Now a member of Redvelvet, a women\'s music group owned by SM Entertainment',index: 2),
		ProfileModel(imagePath: 'assets/yeri.jpg',name: 'Kim Ye-rim',
			location: 'Seoul, Korea',birthday: '1995.1',status: 'Singer',musicType: 'K-pop, Dance pop, Hip-hop',
			introduction: 'Now a member of Redvelvet, a women\'s music group owned by SM Entertainment',index: 3),
		ProfileModel(imagePath: 'assets/joy.jpg',name: 'Park su-young',
			location: 'Seoul, Korea',birthday: '1995.1',status: 'Singer',musicType: 'K-pop, Dance pop, Hip-hop',
			introduction: 'Now a member of Redvelvet, a women\'s music group owned by SM Entertainment',index: 4),
	];

	final ProfileBloc bloc = ProfileBloc();
	Stream<ProfileModel> profileStream;

	AnimationController _animationController;
	Animation _animation;

	@override
  void initState() {
		super.initState();
		profileStream = bloc.profileStream;

		_animationController = AnimationController(vsync: this, duration: Duration(seconds: 2));
		_animation = Tween(begin: 0.0,end: 1.0).animate(
			CurvedAnimation(parent: _animationController,curve: Curves.fastOutSlowIn)
		);
		_animationController.forward();
	}

	@override
  void dispose() {
		bloc.dispose();
		_animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
	  final width = MediaQuery
		  .of(context)
		  .size
		  .width;
	  final height = MediaQuery
		  .of(context)
		  .size
		  .height;


	  return Scaffold(
		  body: Stack(
			  children: <Widget>[
				  Positioned(
					  bottom: 10.0,
					  right: 0.0,
					  child: StreamBuilder(
						  initialData: profiles[0],
							stream: profileStream,
					    builder: (context, AsyncSnapshot<ProfileModel> snapshot){
								return FadeTransition(
									opacity: _animation,
								  child: Image(
								  	image: AssetImage(snapshot.data.imagePath),
								  ),
								);
					    },
					  ),
				  ),
				  Positioned(
					  left: 0.0,
					  bottom: 0.0,
					  child: Container(
						  width: width / 4,
						  height: height / 1.6,
						  decoration: BoxDecoration(
							  gradient: LinearGradient(
								  colors: [Colors.black, Colors.black12],
								  begin: Alignment.bottomCenter,
								  end: Alignment.topCenter
							  )
						  ),
					  ),
				  ),
				  Positioned(
					  left: 10.0,
					  height: height/9,
					  child: Transform.rotate(
						  angle: -pi,
						  child: Image(
							  image: AssetImage('assets/arrow.png'),
							  color: Colors.white,
							  width: 40.0,
							  height: 30.0,
						  ),
					  ),
				  ),
				  Positioned(
					  right: 0.0,
					  bottom: 0.0,
					  child: Row(
						  crossAxisAlignment: CrossAxisAlignment.end,
						  children: <Widget>[
							  Column(
								  mainAxisAlignment: MainAxisAlignment.center,
							    children: <Widget>[
								    Text(
									    'TEAM',
									    style: TextStyle(
										    color: Colors.white,
										    fontWeight: FontWeight.bold
									    ),
								    ),
							      Container(
							        child: ListView.builder(
										    itemCount: names.length,
										    itemBuilder: (context, index) {
												  return StreamBuilder(
													  stream: profileStream,
												    initialData: profiles[0],
												    builder: (context, AsyncSnapshot<ProfileModel> snapshot){
													    return Column(
														    children: <Widget>[
															    GestureDetector(
																    child: ClipOval(
																	    child: AnimatedOpacity(
																		    duration: Duration(seconds: 3),
																		    opacity: index!=snapshot.data.index?0.8:1.0,
																		      child: Image.asset(images[index])),
																	    clipper: ProfileClipper(
																		    radius: index!=snapshot.data.index?25.0:30.0
																	    ),
																    ),
																    onTap: () {
																	    bloc.selectProfile(profiles[index]);
																	    _animationController.value = 0.0;
																	    _animationController.forward();
																    }
															    ),
															    Text(
																    names[index],
																    style: TextStyle(
																	    color: index!=snapshot.data.index?Colors.white.withOpacity(0.7):Colors.white,
																	    fontSize: index!=snapshot.data.index?10.0:13.0
																    ),
															    )
														    ],
													    );
												    }
												  );
											  }
							        ),
								  width: width/6,
								  height: height/1.7,
							      ),
							    ],
							  ),
							  SizedBox(width: 20.0,),
							  Column(
								  crossAxisAlignment: CrossAxisAlignment.end,
							    children: <Widget>[
							    	Container(
									    width: 100.0,
									    height: 90.0,
									    padding: const EdgeInsets.only(top: 10.0,right: 30.0),
									    color: Colors.black,
									    child: Column(
									      children: <Widget>[
									      	Image(
											      image: AssetImage('assets/arrow.png'),
											      color: Colors.white,
											      width: 40.0,
											      height: 30.0,
										      ),
									        Text(
												    'see\nmore',
												    style: TextStyle(
													    color: Colors.white,
													    fontWeight: FontWeight.bold,
													    fontSize: 15.0
												    ),
									        ),
									      ],
									    )
								    ),
							      StreamBuilder(
								      stream: profileStream,
							        initialData: profiles[0],
							        builder: (context, AsyncSnapshot<ProfileModel> snapshot){
								      	return Container(
										      width: width / 1.3,
										      height: height / 1.8,
										      color: Colors.white,
										      child: Padding(
											      padding: const EdgeInsets.only(left: 30.0, top: 30.0),
											      child: Column(
												      crossAxisAlignment: CrossAxisAlignment.start,
												      children: <Widget>[
													      Text(
														      snapshot.data.name,
														      style: TextStyle(
															      color: Colors.black,
															      fontWeight: FontWeight.bold,
															      fontSize: 40.0
														      ),
													      ),
													      Text(
														      snapshot.data.location,
														      style: TextStyle(
															      color: Colors.orange,
															      fontWeight: FontWeight.bold,
															      fontSize: 20.0
														      ),
													      ),
													      SizedBox(height: 30.0,),
													      Row(
														      children: <Widget>[
															      _textView('BIRTHDAY', snapshot.data.birthday),
															      SizedBox(width: 50.0,),
															      _textView('STATUS', snapshot.data.status)
														      ],
													      ),
													      SizedBox(height: 30.0),
													      _textView('MUSICTYPE', snapshot.data.musicType),
													      SizedBox(height: 30.0,),
													      _textView('SELF INTRODUCTION',snapshot.data.introduction)
												      ],
											      ),
										      ),
									      );
							        },
							      ),
							    ],
							  )
						  ],
					  ),
				  ),

			  ],
		  ),
	  );
  }

  Widget _textView(String title, String content) {
  	return Column(
		  crossAxisAlignment: CrossAxisAlignment.start,
		  children: <Widget>[
			  Text(
				  title,
				  style: TextStyle(
					  color: Colors.black.withOpacity(0.3),
					  fontSize: 15.0,
					  letterSpacing: 2.0
				  ),
			  ),
			  SizedBox(height: 10.0),
			  Text(
				  content,
				  style: TextStyle(
					  color: Colors.black,
					  fontWeight: FontWeight.bold,
					  fontSize: 20.0
				  ),
			  )
		  ],
	  );
  }
}


class ProfileClipper extends CustomClipper<Rect> {

	final double radius;

	ProfileClipper({this.radius});

  @override
  getClip(Size size) {
		return Rect.fromCircle(
			center: Offset(size.width/2,size.height/2),
			radius: radius
		);
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }

}
