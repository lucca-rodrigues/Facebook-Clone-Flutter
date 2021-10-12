import 'package:facebook_clone/Screens/Home/home.dart';
// import 'package:facebook_clone/utils/color.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "Facebook",
    debugShowCheckedModeBanner: false,
    // theme: ThemeData(scaffoldBackgroundColor: ColorsPalet.scaffold),
    home: Home(),
  ));
}
