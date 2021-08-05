import 'package:learning_flutter/app/modules/update/domain/entities/credentials_entity.dart';
import 'package:learning_flutter/app/modules/update/domain/repositories/credentials_repository_interface.dart';

import 'update_credentials_usecase.dart';

class UpdateCredentialsImpl implements UpdateCredentialsUseCase {
  final ICredentialsRepository _repository;

  UpdateCredentialsImpl(this._repository);

  @override
  Future<String> sendPost(Credentials credentials) async {
    final requestBody = <String, String>{
      'name': credentials.name,
      'email': credentials.email,
      'password': credentials.password,
    };

    return await _repository.sendPost(requestBody);
  }
}
