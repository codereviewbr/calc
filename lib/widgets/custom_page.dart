import 'package:flutter/material.dart';

class CustomPage extends StatelessWidget {
  final String appBarTitle;
  final VoidCallback onPressed;
  final String buttonText;
  const CustomPage({
    Key? key,
    required this.appBarTitle,
    required this.onPressed,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text(buttonText),
        ),
      ),
    );
  }
}
