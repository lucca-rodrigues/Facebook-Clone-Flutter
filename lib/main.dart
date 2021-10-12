import 'package:facebook_clone/Routes/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "Facebook",
    debugShowCheckedModeBanner: false,
    // theme: ThemeData(scaffoldBackgroundColor: ColorsPalet.scaffold),
    home: Routes(),
  ));
}
