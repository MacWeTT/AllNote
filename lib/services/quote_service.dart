import 'package:flutter/services.dart';
import 'dart:math';
import 'dart:convert';

class QuoteService {
  static Future<String> getRandomQuote() async {
    String data = await rootBundle.loadString('data/quotes.json');
    List<String> quotes = List<String>.from(json.decode(data));

    int index = Random().nextInt(quotes.length);
    return quotes[index];
  }
}
