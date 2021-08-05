import 'package:flutter_modular/flutter_modular.dart';
import 'package:learning_flutter/app/modules/home/home_page.dart';
import 'package:learning_flutter/app/modules/update/update_module.dart';

import 'modules/characters/views/characters_list_page.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => HomePage()),
    ChildRoute(
      '/characters',
      child: (_, args) => CharactersListPage(title: args.data),
    ),
    ModuleRoute('/update', module: UpdateModule()),
  ];
}