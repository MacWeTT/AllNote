import 'package:go_router/go_router.dart';

//Pages
import 'pages/home.dart';
import 'pages/add.dart';
import 'pages/settings.dart';

final GoRouter router = GoRouter(
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
);
