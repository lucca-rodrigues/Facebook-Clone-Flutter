import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_clone/Models/Users/user.dart';
import 'package:flutter/material.dart';

class CreatePost extends StatelessWidget {
  final User user;

  const CreatePost({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey[200],
                backgroundImage: CachedNetworkImageProvider(user.urlImage),
              ),
              SizedBox(
                width: 8,
              ),
              Expanded(
                  child: TextField(
                decoration: InputDecoration.collapsed(
                    hintText: "No que você está pensando"),
              ))
            ],
          ),
          Divider(
            height: 10,
            thickness: 0.5,
          ),
          Container(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.videocam,
                      color: Colors.red,
                    ),
                    label: Text(
                      "Ao vivo",
                      style: TextStyle(color: Colors.black),
                    )),
                VerticalDivider(
                  width: 8,
                ),
                TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.photo_library,
                      color: Colors.green,
                    ),
                    label: Text(
                      "Foto",
                      style: TextStyle(color: Colors.black),
                    )),
                VerticalDivider(
                  width: 8,
                ),
                TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.video_call,
                      color: Colors.purple,
                    ),
                    label: Text(
                      "Sala",
                      style: TextStyle(color: Colors.black),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
