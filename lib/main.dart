import 'package:flutter/material.dart';
import 'package:world_time_app/Screen/Loading.dart';
import 'Screen/home.dart';
void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/':(context) => Loading(),
      '/home':(context) => Home(),
    },
  ));
}

