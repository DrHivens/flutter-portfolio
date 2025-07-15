import 'package:flutter/material.dart';

class UIButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isPrimary;

  const UIButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.isPrimary = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
          decoration: BoxDecoration(
            color: isPrimary ? Colors.white : Colors.transparent,
            border: Border.all(color: Colors.white24, width: 1),
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 14,
              letterSpacing: 2,
              color: isPrimary ? Colors.black : Colors.white,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ),
    );
  }
}
