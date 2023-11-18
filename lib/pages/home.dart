import 'package:flutter/material.dart';
import 'package:allnote/widgets/quote.dart';
import 'package:allnote/widgets/daily.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Quote(),
          Daily(),
        ],
      ),
    );
  }
}
