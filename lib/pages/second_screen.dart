import 'package:calc/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('2 - Second Screen'),
      ),
      body: Center(
        child: CustomButton(
          buttonText: 'Ir Terceira',
          onPressed: () {
            Navigator.pushNamed(context, '/third');
          },
        ),
      ),
    );
  }
}
