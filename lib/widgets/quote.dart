import 'package:flutter/material.dart';
import 'package:allnote/services/quote_service.dart';

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

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: _quoteFuture,
      initialData: "Fetching quotes...",
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Container(
            margin: const EdgeInsets.all(10),
            constraints: const BoxConstraints.expand(
              width: double.infinity,
              height: 70,
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
          return Container(
            margin: const EdgeInsets.all(10),
            constraints: const BoxConstraints.expand(
              width: double.infinity,
              height: 70,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
            ),
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(8),
              child: Text(
                snapshot.data ?? "No quote available",
                style: const TextStyle(
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
