import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RickyMortyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rick and Morty - API',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      initialRoute: '/',
    ).modular();
  }
}
