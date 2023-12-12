import 'package:flutter/material.dart';

class BottNavigationBar extends StatelessWidget {
  const BottNavigationBar({
    super.key,
    required this.text,
    required this.onPressed,
  });
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xffff1065),
        foregroundColor: Colors.white,
        textStyle: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        fixedSize: const Size(double.infinity, 73),
        shape: const RoundedRectangleBorder(),
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
