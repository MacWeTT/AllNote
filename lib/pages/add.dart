import 'package:flutter/material.dart';

class AddPage extends StatelessWidget {
  const AddPage({Key? key, required this.title}) : super(key: key);
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
          children: <Widget>[],
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
            Navigator.pushNamed(context, '/')
          else if (value == 1)
            Navigator.pushNamed(context, "/add")
          else if (value == 2)
            Navigator.pushNamed(context, "/settings")
        },
      ),
    );
  }
}
