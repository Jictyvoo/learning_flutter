import 'package:learning_flutter/app/modules/update/domain/entities/credentials_entity.dart';

abstract class UpdateCredentialsUseCase {
  Future<String> sendPost(Credentials credentials);
}
