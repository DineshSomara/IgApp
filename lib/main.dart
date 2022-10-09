import 'package:flutter/material.dart';
import 'pages/IncPage.dart';
import 'pages/Home.dart';

void main() => runApp(MaterialApp(
      initialRoute: "/",
      routes: {
        '/': (context) => const Home(),
        '/home': (context) => const Home(),
        '/inc_page': (context) => const IncPage(),
      },
    ));
