import 'package:flutter/material.dart';
import 'package:allnote/widgets/quote.dart';
import 'package:allnote/widgets/daily.dart';

import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
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
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings")
        ],
        onTap: (value) => {
          if (value == 0)
            GoRouter.of(context).go("/")
          else if (value == 1)
            GoRouter.of(context).go("/add")
          else if (value == 2)
            GoRouter.of(context).go("/settings")
        },
      ),
    );
  }
}
