import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learning_flutter/app/modules/characters/models/characters_list_model.dart';

const CHARACTERS_ADDRESS = 'https://rickandmortyapi.com/api/character/?page=1';

class CharactersRepository {
  const CharactersRepository();

  Future<CharactersListDatasource> fetchCharacters() async {
    final response = await http.get(Uri.parse(CHARACTERS_ADDRESS));
    final resultMap = jsonDecode(response.body);
    if (resultMap is Map<String, dynamic>) {
      return CharactersListDatasource.fromJson(resultMap);
    }
    return CharactersListDatasource.fromJson({});
  }
}
