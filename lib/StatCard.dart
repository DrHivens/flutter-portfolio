import 'package:flutter/material.dart';
import 'package:my_portfolio/StatModel.dart';

class StatCard extends StatelessWidget {
  final StatModel stat;

  const StatCard({Key? key, required this.stat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          stat.number,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w100,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 8),
        Text(
          stat.label,
          style: TextStyle(
            fontSize: 10,
            letterSpacing: 1,
            color: Colors.white60,
          ),
        ),
      ],
    );
  }
}
