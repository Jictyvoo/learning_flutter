import 'package:flutter/material.dart';

import 'characters_list/character_list_widget.dart';

class CharactersListPage extends StatelessWidget {
  final String title;

  const CharactersListPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF9EB0BF),
      appBar: AppBar(
        title: Text(title),
      ),
      body: CharacterListWidget(),
    );
  }
}
