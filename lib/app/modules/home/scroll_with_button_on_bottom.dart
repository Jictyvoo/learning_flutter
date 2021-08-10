import 'package:flutter/material.dart';

class ScrollWithButtonOnBottom extends StatelessWidget {
  const ScrollWithButtonOnBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate.fixed(
              [
                Container(
                  width: double.maxFinite,
                  height: 200,
                  color: Colors.green,
                ),
                Container(
                  width: double.maxFinite,
                  height: 200,
                  color: Colors.pink,
                ),
                Container(
                  width: double.maxFinite,
                  height: 200,
                  color: Colors.orange,
                ),
                Container(
                  width: double.maxFinite,
                  height: 200,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: null,
                child: Text('Meu botão'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
