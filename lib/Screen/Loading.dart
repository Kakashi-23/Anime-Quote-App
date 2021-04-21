import 'package:awesome_loader/awesome_loader.dart';
import 'package:flutter/material.dart';
import 'package:world_time_app/Network/NetworkRequest.dart';


class Loading extends StatefulWidget {

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setupRequest() async {
    Quote quote=Quote();
    await quote.getQuote();
    Navigator.pushReplacementNamed(context, '/home',
        arguments: {
      'QuoteData':quote.quoteList,
    });
  }
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    setupRequest();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[600],
      body: SafeArea(
        child: Container(
          child: Center(
            child: AwesomeLoader(
              loaderType: AwesomeLoader.AwesomeLoader4,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
