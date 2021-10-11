import 'package:facebook_clone/Models/Users/user.dart';

class Story {
  User user;
  String urlImage;
  bool visualized;

  Story({
    required this.user,
    required this.urlImage,
    this.visualized = false,
  });
}
