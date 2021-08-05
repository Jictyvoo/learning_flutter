import 'package:flutter/material.dart';
import 'package:learning_flutter/app/viewmodels/character_view_model.dart';
import 'package:learning_flutter/app/views/characters_list/fetch_controller.dart';
import 'package:learning_flutter/app/views/widgets/character_card.dart';

class CharacterListWidget extends StatelessWidget {
  final FetchCharactersController _controller =
      const FetchCharactersController();

  const CharacterListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<CharacterViewModel>>(
      future: _controller.fetchCharacters(),
      builder: (
        BuildContext context,
        AsyncSnapshot<List<CharacterViewModel>> snapshot,
      ) {
        if (snapshot.connectionState == ConnectionState.done) {
          final data = snapshot.data ?? const [];
          return ListView.separated(
            itemCount: data.length,
            padding: const EdgeInsets.all(10),
            itemBuilder: (BuildContext context, int index) {
              return CharacterCard(
                characterInfo: data[index],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: 10,
              );
            },
          );
        }
        return Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
