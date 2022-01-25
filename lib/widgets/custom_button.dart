import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback? onPressed;
  const CustomButton({
    Key? key,
    required this.buttonText,
    this.onPressed,
  }) : super(key: key);

  Color onPressedIsNull() {
    Color color;
    if (onPressed == null) {
      return color = Colors.grey;
    } else {
      color = Colors.blueAccent;
    }
    return color;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Material(
            borderRadius: const BorderRadius.all(Radius.circular(20.0)),
            elevation: 2.0,
            child: Ink(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                color: onPressedIsNull(),
              ),
              child: InkWell(
                borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    buttonText,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                onTap: onPressed,
              ),
            )),
      ],
    );
  }
}
