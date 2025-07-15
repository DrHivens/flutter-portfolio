import 'package:flutter/material.dart';
import 'package:my_portfolio/StatCard.dart';
import 'package:my_portfolio/StatModel.dart';

class StatsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final stats = [
      StatModel(number: '50+', label: 'PROJECTS COMPLETED'),
      StatModel(number: '25+', label: 'HAPPY CLIENTS'),
      StatModel(number: '3+', label: 'YEARS EXPERIENCE'),
      StatModel(number: '99%', label: 'CLIENT SATISFACTION'),
    ];

    return Container(
      padding: EdgeInsets.symmetric(vertical: 80, horizontal: 40),
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1000),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: stats.map((stat) => StatCard(stat: stat)).toList(),
          ),
        ),
      ),
    );
  }
}
