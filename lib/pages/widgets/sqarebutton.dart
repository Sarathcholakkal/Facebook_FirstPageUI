import 'package:flutter/material.dart';

class SqureButton extends StatelessWidget {
  const SqureButton({
    super.key,
    required this.onpress,
    required this.icon,
    required this.color,
    required this.label,
  });

  final void Function() onpress;
  final IconData icon;
  final Color color;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onpress,
      icon: Icon(icon, color: color),
      label: Text(label),
    );
  }
}
