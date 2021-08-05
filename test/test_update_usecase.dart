import 'package:flutter_test/flutter_test.dart';
import 'package:learning_flutter/app/modules/update/domain/datasource/credentials_datasource_interface.dart';
import 'package:learning_flutter/app/modules/update/domain/entities/credentials_entity.dart';
import 'package:learning_flutter/app/modules/update/domain/usecases/update_credentials.dart';
import 'package:learning_flutter/app/modules/update/external/repositories/update_credentials_repository.dart';

class MockUpdateDatasource implements CredentialsDatasourceInterface {
  @override
  Future<String> updateCredentials(Object? requestBody) {
    // TODO: implement updateCredentials
    throw UnimplementedError();
  }
}

void main() {
  test('Test Use case', () async {
    final useCase = UpdateCredentialsImpl(
      UpdateCredentialsRepository(
        MockUpdateDatasource(),
      ),
    );
    var hasError = false;
    try {
      await useCase.sendPost(Credentials('', '', ''));
    } catch (e) {
      hasError = true;
    }

    expect(true, hasError);
  });
}
