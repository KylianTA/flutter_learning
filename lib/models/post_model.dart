import 'package:test_flutter/models/user.dart';

class PostModel {
  User owner;
  String? text;
  String? image;
  List<User> likes;
  List<User> dislikes;
  List<User> share;

  PostModel({
    required this.owner,
    this.text,
    this.image,
    this.likes = const [],
    this.dislikes = const [],
    this.share = const [],
  });
}
