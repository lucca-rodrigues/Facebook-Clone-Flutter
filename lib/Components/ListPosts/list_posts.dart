import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_clone/Components/PerfilImage/perfil_image.dart';
import 'package:facebook_clone/Models/models.dart';
import 'package:facebook_clone/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class PostList extends StatelessWidget {
  final Post post;
  const PostList({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          //Cabeçalho
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [HeaderPosts(post: post), Text(post.description)],
            ),
          ),

          //Imagem post
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: CachedNetworkImage(
              imageUrl: post.urlImage,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: PostStaticts(post: post),
          ),
          //Área de estátisticas
        ],
      ),
    );
  }
}

class ActionsButtonPost extends StatelessWidget {
  final Icon icon;
  final String text;
  final VoidCallback onTap;

  const ActionsButtonPost(
      {Key? key, required this.icon, required this.text, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Material(
      child: InkWell(
        onTap: onTap,
        child: Container(
          child: Row(
            children: [
              icon,
              SizedBox(
                width: 4,
              ),
              Text(
                text,
                style: TextStyle(
                    color: Colors.grey[700], fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    ));
  }
}

class PostStaticts extends StatelessWidget {
  final Post post;

  const PostStaticts({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                  color: ColorsPalet.facebookColor, shape: BoxShape.circle),
              child: Icon(
                Icons.thumb_up,
                size: 10,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 4,
            ),
            Expanded(
                child: Text(
              "${post.likes}",
              style: TextStyle(color: Colors.grey[700]),
            )),
            Text(
              "${post.comments} comentários",
              style: TextStyle(color: Colors.grey[700]),
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              "${post.shareds} compartilhamentos",
              style: TextStyle(color: Colors.grey[700]),
            )
          ],
        ),
        Divider(
          thickness: 1.2,
        ),
        Row(
          children: [
            ActionsButtonPost(
                icon: Icon(
                  LineIcons.thumbsUpAlt,
                  color: Colors.grey[700],
                ),
                text: "Curtir",
                onTap: () {}),
            ActionsButtonPost(
                icon: Icon(
                  LineIcons.alternateCommentAlt,
                  color: Colors.grey[700],
                ),
                text: "Comentar",
                onTap: () {}),
            ActionsButtonPost(
                icon: Icon(
                  LineIcons.share,
                  color: Colors.grey[700],
                ),
                text: "Compartilhar",
                onTap: () {}),
          ],
        )
      ],
    );
  }
}

class HeaderPosts extends StatelessWidget {
  final Post post;

  const HeaderPosts({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PerfilImage(
          urlImage: post.user.urlImage,
          visualized: true,
        ),
        SizedBox(
          width: 8,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                post.user.name,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Text("${post.time} - "),
                  Icon(
                    Icons.public,
                    size: 12,
                    color: Colors.grey[600],
                  )
                ],
              )
            ],
          ),
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
      ],
    );
  }
}
