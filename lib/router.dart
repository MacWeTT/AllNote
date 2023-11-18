import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

//Pages
import 'pages/home.dart';
import 'pages/add.dart';
import 'pages/settings.dart';

final navItems = [
  const BottomNavigationBarItem(
    icon: Icon(Icons.home_outlined),
    label: "Home",
  ),
  const BottomNavigationBarItem(
    icon: Icon(Icons.add),
    label: "Add Note",
  ),
  const BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings")
];

final GoRouter router = GoRouter(
  routes: [
    ShellRoute(
        routes: [
          GoRoute(
            path: '/',
            builder: (context, state) => const HomePage(title: "Home"),
          ),
          GoRoute(
            path: '/add',
            builder: (context, state) => const AddPage(title: "Add Note"),
          ),
          GoRoute(
            path: '/settings',
            builder: (context, state) => const SettingsPage(title: "Settings"),
          ),
        ],
        builder: (context, state, child) {
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
            body: child,
            bottomNavigationBar: BottomNavigationBar(
                items: navItems,
                onTap: (value) => {
                      if (value == 0)
                        GoRouter.of(context).go("/")
                      else if (value == 1)
                        GoRouter.of(context).go("/add")
                      else if (value == 2)
                        GoRouter.of(context).go("/settings")
                    }),
          );
        })
  ],
);
