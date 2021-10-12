import 'package:facebook_clone/utils/color.dart';
import 'package:flutter/material.dart';

class NavigationTab extends StatelessWidget {
  final List<IconData> icons;
  final int indexTab;
  final Function(int) onTap;

  const NavigationTab(
      {Key? key,
      required this.icons,
      required this.indexTab,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
        onTap: onTap,
        indicator: BoxDecoration(
            border: Border(
          top: BorderSide(color: ColorsPalet.facebookColor, width: 3),
        )),
        tabs: icons
            .asMap()
            .map((index, icone) {
              return MapEntry(
                  index,
                  Tab(
                    icon: Icon(
                      icone,
                      color: indexTab == index
                          ? ColorsPalet.facebookColor
                          : Colors.black54,
                      size: 30,
                    ),
                  ));
            })
            .values
            .toList());
  }
}
