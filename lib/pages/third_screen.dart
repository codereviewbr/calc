import 'package:calc/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('3 - Third Screen'),
      ),
      body: Center(
        child: CustomButton(
          buttonText: 'Voltar para Home',
          onPressed: () {
            Navigator.popUntil(context, ModalRoute.withName('/'));
          },
        ),
      ),
    );
  }
}
