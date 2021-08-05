import 'package:flutter_modular/flutter_modular.dart';
import 'package:learning_flutter/app/modules/update/update_page.dart';

class UpdateModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => UpdatePage()),
  ];
}
