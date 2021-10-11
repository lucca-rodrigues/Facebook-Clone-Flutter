import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_clone/Components/PerfilImage/perfil_image.dart';
import 'package:facebook_clone/Models/models.dart';
import 'package:flutter/material.dart';

class CardPostss extends StatelessWidget {
  final Posts post;
  const CardPostss({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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

          //Área de estátisticas
          Container(
            color: Colors.red,
            width: 100,
            height: 100,
          )
        ],
      ),
    );
  }
}

class HeaderPosts extends StatelessWidget {
  final Posts post;

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
