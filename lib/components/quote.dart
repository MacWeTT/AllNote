import 'package:flutter/material.dart';
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
                  constraints: BoxConstraints.expand(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.1,
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
            bottom: 10,
            right: 8,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: InkWell(
                onTap: _refreshQuote,
                customBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(Icons.refresh),
              ),
            )
            // child: IconButton(
            //   constraints: const BoxConstraints(),
            //   onPressed: _refreshQuote,
            //   tooltip: 'Refresh Quote',
            //   icon: const Icon(Icons.refresh),
            // ),
            ),
      ],
    );
  }
}
