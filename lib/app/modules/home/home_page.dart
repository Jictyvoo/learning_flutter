import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final buttonWidth = 240.0;
    return Scaffold(
      appBar: AppBar(
        title: Text('Você  está na Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: buttonWidth,
              child: ElevatedButton(
                onPressed: () async {
                  await Modular.to
                      .pushNamed('/characters', arguments: 'Olha os Ricks');
                },
                child: Text('Ver personagens'),
              ),
            ),
            SizedBox(height: 12),
            SizedBox(
              width: buttonWidth,
              child: ElevatedButton(
                onPressed: () async {
                  await Modular.to.pushNamed('/update', arguments: 'Nada');
                },
                child: Text('Ir para formulários'),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        items: [
          for (var index = 0; index < 3; index++)
            BottomNavigationBarItem(icon: Icon(Icons.http),label: '$index'),
        ],
      ),
    );
  }
}
