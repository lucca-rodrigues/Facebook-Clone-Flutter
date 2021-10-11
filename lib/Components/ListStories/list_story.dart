import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_clone/Components/PerfilImage/perfil_image.dart';
import 'package:facebook_clone/Data/data.dart';
import 'package:facebook_clone/Models/Stories/story.dart';
import 'package:facebook_clone/Models/Users/user.dart';
import 'package:facebook_clone/utils/color.dart';
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
          itemCount: 1 + stories.length,
          itemBuilder: (context, index) {
            if (index == 0) {
              Story storyUser =
                  Story(user: currentUser, urlImage: currentUser.urlImage);
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: CardStory(
                  stories: storyUser,
                ),
              );
            }

            Story story = stories[index - 1];
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
  final bool addStory;

  const CardStory({Key? key, required this.stories, this.addStory = false})
      : super(key: key);

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
        ),
        Container(
          height: double.infinity,
          width: 110,
          decoration: BoxDecoration(
              gradient: ColorsPalet.gradientStory,
              borderRadius: BorderRadius.circular(12)),
        ),
        Positioned(
            top: 8,
            left: 8,
            child: addStory
                ? Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      icon: Icon(Icons.add),
                      iconSize: 30,
                      color: ColorsPalet.facebookColor,
                      onPressed: () {},
                    ),
                  )
                : PerfilImage(
                    urlImage: stories.user.urlImage,
                    visualized: stories.visualized,
                  )),
        Positioned(
            bottom: 8,
            left: 8,
            right: 8,
            child: Text(
              addStory ? "Criar Story" : stories.user.name,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ))
      ],
    );
  }
}
