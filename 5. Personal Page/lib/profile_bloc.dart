import 'dart:async';

import 'package:my_page/profile_model.dart';

class ProfileBloc {

	StreamController<ProfileModel> _controller = StreamController<ProfileModel>.broadcast();

	void dispose() {
		_controller.close();
	}

	void selectProfile(ProfileModel model){
		_controller.sink.add(model);
	}

	Stream<ProfileModel> get profileStream => _controller.stream;
}