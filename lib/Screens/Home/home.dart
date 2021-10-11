import 'package:facebook_clone/Components/ButtonCircle/button_circle.dart';
import 'package:facebook_clone/Components/Createposts/create_post.dart';
import 'package:facebook_clone/Data/data.dart';
import 'package:facebook_clone/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            // expandedHeight: 250,
            floating: true,
            centerTitle: false,
            title: const Text(
              "facebook",
              style: TextStyle(
                  color: ColorsPalet.facebookColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  letterSpacing: -1.2),
            ),
            actions: [
              ButtonCircle(
                icone: Icons.search,
                iconeTamanho: 30,
                onPressed: () {},
              ),
              ButtonCircle(
                icone: LineIcons.facebookMessenger,
                iconeTamanho: 30,
                onPressed: () {},
              )
            ],
          ),
          SliverToBoxAdapter(
            child: CreatePost(
              user: currentUser,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.green,
              height: 2000,
            ),
          ),
        ],
      ),
    );
  }
}
