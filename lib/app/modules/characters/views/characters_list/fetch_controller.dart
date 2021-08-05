import 'package:learning_flutter/app/modules/characters/viewmodels/character_view_model.dart';

import 'characters_repository.dart';

class FetchCharactersController {
  final CharactersRepository _repository = const CharactersRepository();

  const FetchCharactersController();

  Future<List<CharacterViewModel>> fetchCharacters() async {
    final charactersList = <CharacterViewModel>[];
    try {
      final result = await _repository.fetchCharacters();
      for (final element in result.results) {
        charactersList.add(
          CharacterViewModel(
            name: element.name,
            imageURL: element.image,
            status: element.status,
            species: element.species,
            firstSeenIn: element.origin.name,
            lastKnownLocation: element.location.name,
          ),
        );
      }
    } catch (e, stacktrace) {
      print('$e ---- $stacktrace');
    }
    return charactersList;
  }
}
