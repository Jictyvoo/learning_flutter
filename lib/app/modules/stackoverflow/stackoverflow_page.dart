import 'package:flutter/material.dart';
import 'package:learning_flutter/app/modules/stackoverflow/widgets/svg_button.dart';

class StackoverflowPage extends StatelessWidget {
  const StackoverflowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NAD'),
      ),
      body: Center(
        child: SvgButtonWidget(cardName: 'No Name'),
      ),
    );
  }
}
