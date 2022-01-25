import 'package:calc/widgets/widgets.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('1 - First Screen'),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) => ConstrainedBox(
            constraints: constraints,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('${constraints.maxHeight}'),
                  const SizedBox(
                    height: 200.0,
                  ),
                  CustomButton(
                    buttonText: 'Ir Segunda',
                    onPressed: () {
                      Navigator.pushNamed(context, '/second');
                    },
                  ),
                  const SizedBox(
                    height: 200.0,
                  ),
                  CustomButton(
                    buttonText: 'Ir Segunda',
                    onPressed: () {
                      Navigator.pushNamed(context, '/second');
                    },
                  ),
                  const SizedBox(
                    height: 200.0,
                  ),
                  CustomButton(
                    buttonText: 'Ir Segunda',
                    onPressed: () {
                      Navigator.pushNamed(context, '/second');
                    },
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
