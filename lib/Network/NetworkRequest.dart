import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Quote{

  List quoteList;

  Future<void> getQuote() async {
    String url = 'https://animechan.vercel.app/api/quotes';
    Response response = await get(Uri.parse(url));
    List data = jsonDecode(response.body);
   quoteList = data;
  }
}
