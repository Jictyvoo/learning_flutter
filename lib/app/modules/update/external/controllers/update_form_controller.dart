import 'package:learning_flutter/app/modules/update/domain/datasource/credentials_datasource_http.dart';
import 'package:learning_flutter/app/modules/update/domain/entities/credentials_entity.dart';
import 'package:learning_flutter/app/modules/update/domain/usecases/update_credentials.dart';
import 'package:learning_flutter/app/modules/update/domain/usecases/update_credentials_usecase.dart';
import 'package:learning_flutter/app/modules/update/external/repositories/update_credentials_repository.dart';
import 'package:learning_flutter/app/modules/update/viewmodel/update_form_data.dart';

class UpdateFormController {
  final UpdateCredentialsUseCase _useCase = UpdateCredentialsImpl(
    UpdateCredentialsRepository(
      CredentialsDatasourceHttp(),
    ),
  );

  Future<String> updateCredentials(UpdateFormData formData) async {
    try {
      await _useCase.sendPost(
        Credentials(formData.name, formData.email, formData.password),
      );
    } catch (e, stacktrace) {
      print('$e $stacktrace');
      return e.toString();
    }
    return '';
  }
}
