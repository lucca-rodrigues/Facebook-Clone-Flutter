import 'package:facebook_clone/Components/NavigationTab/navigation_tab.dart';
import 'package:facebook_clone/Screens/Home/home.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class Routes extends StatefulWidget {
  const Routes({Key? key}) : super(key: key);

  @override
  _InitialRoutes createState() => _InitialRoutes();
}

class _InitialRoutes extends State<Routes> {
  final List<Widget> _telas = [
    Home(),
    Scaffold(
      backgroundColor: Colors.green,
    ),
    Scaffold(
      backgroundColor: Colors.yellow,
    ),
    Scaffold(
      backgroundColor: Colors.purple,
    ),
    Scaffold(
      backgroundColor: Colors.black54,
    ),
    Scaffold(
      backgroundColor: Colors.orange,
    ),
  ];

  List<IconData> _icons = [
    Icons.home,
    Icons.ondemand_video,
    Icons.storefront_outlined,
    Icons.flag_outlined,
    LineIcons.bell,
    Icons.menu,
  ];

  int _indexTab = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _icons.length,
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: _telas,
          ),
          bottomNavigationBar: NavigationTab(
            icons: _icons,
            indexTab: _indexTab,
            onTap: (indice) {
              setState(() {
                _indexTab = indice;
              });
            },
          ),
        ));
  }
}
