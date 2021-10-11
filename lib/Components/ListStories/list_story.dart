import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_clone/Models/Stories/story.dart';
import 'package:facebook_clone/Models/Users/user.dart';
import 'package:flutter/material.dart';

class StoryList extends StatelessWidget {
  final User user;
  final List<Story> stories;

  const StoryList({Key? key, required this.user, required this.stories})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.white,
      child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          scrollDirection: Axis.horizontal,
          itemCount: stories.length,
          itemBuilder: (context, indice) {
            Story story = stories[indice];

            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: CardStory(
                stories: story,
              ),
            );
          }),
    );
  }
}

class CardStory extends StatelessWidget {
  final Story stories;
  const CardStory({Key? key, required this.stories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: CachedNetworkImage(
            imageUrl: stories.urlImage,
            height: double.infinity,
            width: 110,
            fit: BoxFit.cover,
          ),
        )
      ],
    );
  }
}
