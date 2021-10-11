import 'package:facebook_clone/Models/models.dart';

class Posts {
  User user;
  String description;
  String time;
  String urlImage;
  int likes;
  int comments;
  int shareds;

  Posts({
    required this.user,
    required this.description,
    required this.time,
    required this.urlImage,
    required this.likes,
    required this.comments,
    required this.shareds,
  });
}
