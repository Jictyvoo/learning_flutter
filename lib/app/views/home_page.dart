import 'package:flutter/material.dart';
import 'package:learning_flutter/app/views/characters_list/character_list_widget.dart';

class HomePage extends StatelessWidget {
  final String title;

  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF9EB0BF),
      appBar: AppBar(
        title: Text('Listagem de personagens'),
      ),
      body: CharacterListWidget(),
    );
  }
}
