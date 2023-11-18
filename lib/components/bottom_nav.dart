import 'package:flutter/material.dart';

class BottomNav extends BottomNavigationBar {
  BottomNav({Key? key, required this.value, required Function(int) onTap})
      : super(
          key: key,
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
                icon: Icon(Icons.settings), label: "Settings")
          ],
          onTap: onTap,
          currentIndex: value,
        );

  final int value;
}
