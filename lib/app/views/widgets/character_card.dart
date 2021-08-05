import 'package:flutter/material.dart';
import 'package:learning_flutter/app/viewmodels/character_view_model.dart';

class CharacterCard extends StatelessWidget {
  final CharacterViewModel characterInfo;

  const CharacterCard({Key? key, required this.characterInfo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ctxSize = MediaQuery.of(context).size;
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: Row(
        children: [
          Image.network(
            characterInfo.imageURL,
            width: ctxSize.width * 0.46,
            fit: BoxFit.fitWidth,
          ),
          Expanded(
            child:  Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    characterInfo.name,
                    textAlign: TextAlign.center,
                    softWrap: true,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text('${characterInfo.status} - ${characterInfo.species}'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
