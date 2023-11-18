import 'package:flutter/material.dart';

class AddPage extends StatelessWidget {
  const AddPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'AllNote',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.yellow[600],
          bottom: const TabBar(
            tabs: [
              Tab(text: "Daily"),
              Tab(text: "Weekly"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            // Content for "Daily" tab
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.calendar_today),
                Text("Add Daily Task"),
              ],
            ),

            // Content for "Weekly" tab
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.calendar_view_week),
                Text("Add Weekly Task"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
