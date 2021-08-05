import 'package:flutter/material.dart';

import 'views/home_page.dart';

class RickyMortyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: HomePage(title: 'Minha página Flutter'),
    );
  }
}
