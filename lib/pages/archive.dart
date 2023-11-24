import 'package:flutter/material.dart';

class ArchivePage extends StatelessWidget {
  final String title;
  const ArchivePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.yellow[600],
      ),
      body: const Column(
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
