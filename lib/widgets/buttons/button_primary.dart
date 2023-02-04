import 'package:flutter/material.dart';

class ButtonPrimary extends StatelessWidget {
  const ButtonPrimary({
    super.key,
    required this.label,
    required this.onPressed,
  });

  final String label;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.orangeAccent),
        side: MaterialStateProperty.all(const BorderSide()),
        minimumSize: MaterialStateProperty.all(const Size(150, 35)),
      ),
      child: Text(label, style: const TextStyle(color: Colors.black)),
    );
  }
}
