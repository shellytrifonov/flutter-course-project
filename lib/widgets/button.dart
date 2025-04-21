import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final bool isOutlined;
  final Color color;
  final Color textColor;

  const CustomButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.isOutlined = false,
    this.color = const Color.fromARGB(255, 84, 138, 198),
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = isOutlined
        ? OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 70),
            side: const BorderSide(color: Colors.black),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          )
        : ElevatedButton.styleFrom(
            backgroundColor: color,
            foregroundColor: textColor,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 70),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          );

    final Widget child = Text(
      label,
      style: TextStyle(fontSize: 16, color: isOutlined ? Colors.black : textColor),
    );

    return isOutlined
        ? OutlinedButton(onPressed: onPressed, style: style, child: child)
        : ElevatedButton(onPressed: onPressed, style: style, child: child);
  }
}