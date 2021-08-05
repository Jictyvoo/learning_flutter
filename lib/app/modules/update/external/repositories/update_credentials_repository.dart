import 'package:learning_flutter/app/modules/update/domain/datasource/credentials_datasource_interface.dart';
import 'package:learning_flutter/app/modules/update/domain/repositories/credentials_repository_interface.dart';

class UpdateCredentialsRepository implements ICredentialsRepository {
  final CredentialsDatasourceInterface _datasource;

  UpdateCredentialsRepository(this._datasource);

  @override
  Future<String> sendPost(Object? object) async {
    final result = await _datasource.updateCredentials(object);
    if (result.isNotEmpty) {
      throw (result);
    }
    return '';
  }
}
