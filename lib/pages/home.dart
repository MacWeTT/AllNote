import 'package:flutter/material.dart';
import 'package:AllNote/components/quote.dart';
import 'package:AllNote/components/daily.dart';

class Home extends StatelessWidget {
  const Home({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 24,
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Quote(),
            Daily(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: "Add Note",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings"
          )
        ],
      ),
    );
  }
}
