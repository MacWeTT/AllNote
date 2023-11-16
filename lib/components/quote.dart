import 'package:flutter/material.dart';
import 'dart:math';

class QuoteService {
  static Future<String> getRandomQuote() async {
    // String data = await rootBundle.loadString('data/quotes.json');
    // print("Raw Data: $data");
    //
    // List<String> quotes = List<String>.from(json.decode(data));
    // print("Decoded Data: $quotes");

    final List<String> quotes = [
      "Thieves don't break into empty houses.",
      "Success is not final, failure is not fatal: It is the courage to continue that counts.",
      "The only way to do great work is to love what you do.",
      "In three words I can sum up everything I've learned about life: it goes on.",
      "Believe you can and you're halfway there.",
      "The only limit to our realization of tomorrow will be our doubts of today.",
      "Thieves don't break into empty houses.",
      "Your time is limited, don't waste it living someone else's life.",
      "The only way to do great work is to love what you do.",
      "Success is not final, failure is not fatal: It is the courage to continue that counts."
    ];

    int index = Random().nextInt(quotes.length);
    return quotes[index];
  }
}

class Quote extends StatefulWidget {
  const Quote({Key? key}) : super(key: key);

  @override
  QuoteState createState() => QuoteState();
}

class QuoteState extends State<Quote> {
  late Future<String> _quoteFuture;

  @override
  void initState() {
    super.initState();
    _quoteFuture = QuoteService.getRandomQuote();
  }

  void _refreshQuote() {
    setState(() {
      _quoteFuture = QuoteService.getRandomQuote();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FutureBuilder<String>(
          future: _quoteFuture,
          initialData: "Fetching quotes...",
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Expanded(
                child: Container(
                  margin: const EdgeInsets.all(10),
                  constraints: const BoxConstraints.expand(
                    width: double.infinity,
                    height: 80,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                  ),
                ),
              );
            } else if (snapshot.hasError) {
              return Row(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text("No quote was there!"),
                    ),
                  ),
                ],
              );
            } else {
              return Expanded(
                child: Container(
                  margin: const EdgeInsets.all(10),
                  constraints: const BoxConstraints.expand(
                    width: double.infinity,
                    height: 80,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      snapshot.data ?? "No quote available",
                      style: const TextStyle(
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              );
            }
          },
        ),
        Positioned(
          bottom: 8,
          right: 8,
          child: IconButton(
            padding: const EdgeInsets.all(0),
            onPressed: _refreshQuote,
            tooltip: 'Refresh Quote',
            icon: const Icon(Icons.refresh),
          ),
        ),
      ],
    );
  }
}
