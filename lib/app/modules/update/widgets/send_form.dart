import 'package:flutter/material.dart';
import 'package:learning_flutter/app/modules/update/viewmodel/update_form_data.dart';

class UpdateSendForm extends StatefulWidget {
  final void Function(UpdateFormData)? onSubmit;

  const UpdateSendForm({Key? key, this.onSubmit}) : super(key: key);

  @override
  _UpdateSendFormState createState() => _UpdateSendFormState();
}

class _UpdateSendFormState extends State<UpdateSendForm> {
  final GlobalKey<FormState> _key;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  _UpdateSendFormState() : _key = GlobalKey<FormState>();

  void _submitForm() {
    if (widget.onSubmit != null) {
      widget.onSubmit!(UpdateFormData(
        _nameController.text,
        _emailController.text,
        _passwordController.text,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    final ctxSize = MediaQuery.of(context).size;
    return Form(
      key: _key,
      child: Column(
        children: [
          TextFormField(
            controller: _nameController,
            decoration: InputDecoration(
              labelText: 'Name',
              hintText: 'Put your name here',
            ),
            validator: (String? value) {
              if (value?.isEmpty ?? true) {
                return 'Name cannot be empty';
              }
            },
          ),
          TextFormField(
            controller: _emailController,
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'example@mail.com',
            ),
          ),
          TextFormField(
            controller: _passwordController,
            decoration: InputDecoration(
              labelText: 'Password',
            ),
            obscureText: true,
            autovalidateMode: AutovalidateMode.always,
            validator: (String? value) {
              if ((value?.length ?? 0) <= 4) {
                return 'Sua senha é pequena demais';
              }
            },
          ),
          Divider(
            indent: 20,
            endIndent: 20,
            color: Colors.green,
            thickness: 6,
          ),
          SizedBox(
            width: ctxSize.width * 0.68,
            child: ElevatedButton.icon(
              onPressed: () {
                if (_key.currentState?.validate() ?? false) {
                  _submitForm();
                }
              },
              icon: Icon(Icons.subdirectory_arrow_right_sharp),
              label: Text('Enviar form'),
            ),
          ),
        ],
      ),
    );
  }
}
