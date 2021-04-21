import 'package:flutter/material.dart';
import 'package:world_time_app/Screen/HomeBody.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List quoteData;
    @override
  Widget build(BuildContext context) {
     Map<String,List> data = ModalRoute.of(context).settings.arguments;
     quoteData = data['QuoteData'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[600],
        title: Text(
          'Anime Quotes',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontStyle: FontStyle.normal,
          ),
        ),
        centerTitle:true,
      ),
      body: SafeArea(
          child: HomeBody(quotedata: quoteData)
    ),
    );

  }
}
