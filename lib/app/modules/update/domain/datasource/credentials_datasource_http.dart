import 'dart:convert';

import 'package:http/http.dart' as http;

import 'credentials_datasource_interface.dart';

class CredentialsDatasourceHttp implements CredentialsDatasourceInterface {
  @override
  Future<String> updateCredentials(Object? requestBody) async {
    final response = await http.post(
      Uri.parse('http://10.0.2.2:8000/'),
      body: jsonEncode(requestBody),
      headers: {'Content-Type': 'application/json'},
    );
    return response.statusCode != 200 ? 'Status Code is not 200' : '';
  }
}
