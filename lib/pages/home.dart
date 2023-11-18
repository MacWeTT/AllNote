import 'package:flutter/material.dart';
import 'package:allnote/widgets/quote.dart';
import 'package:allnote/widgets/daily.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'AllNote',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.yellow[600],
      ),
      body: const Column(
        children: <Widget>[
          Quote(),
          Daily(),
        ],
      ),
    );
  }
}
