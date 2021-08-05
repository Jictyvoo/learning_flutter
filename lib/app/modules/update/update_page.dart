import 'package:flutter/material.dart';
import 'package:learning_flutter/app/modules/update/viewmodel/update_form_data.dart';

import 'external/controllers/update_form_controller.dart';
import 'widgets/send_form.dart';

class UpdatePage extends StatelessWidget {
  const UpdatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NAD'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: UpdateSendForm(
                onSubmit: (UpdateFormData formData) async {
                  final isSuccess =
                      await UpdateFormController().updateCredentials(formData);
                  if (isSuccess.isNotEmpty) {
                    await showDialog(
                        context: context,
                        builder: (BuildContext internalContext) {
                          return AlertDialog(
                            title: Text('Erro no Requisição'),
                            content: Text(isSuccess),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(internalContext).pop();
                                },
                                child: Text('Fechar'),
                              )
                            ],
                          );
                        });
                  }
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
