import 'package:flutter_modular/flutter_modular.dart';

import 'stackoverflow_page.dart';

class StackoverflowModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => StackoverflowPage()),
  ];
}
