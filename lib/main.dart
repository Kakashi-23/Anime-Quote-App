import 'package:flutter/material.dart';
import 'package:world_time_app/Screen/choose_location.dart';
import 'package:world_time_app/Screen/loading.dart';
import 'Screen/home.dart';
void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/':(context) => Loading(),
      '/home':(context) => Home(),
      '/location': (context) => ChooseLocation(),
    },
  ));
}

