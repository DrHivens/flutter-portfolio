import 'package:flutter/material.dart';
import 'package:my_portfolio/SectionsTile.dart';
import 'package:my_portfolio/SkillChip.dart';

class SkillsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final skills = [
      'FLUTTER',
      'REACT',
      'NODE.JS',
      'PYTHON',
      'TYPESCRIPT',
      'MONGODB',
      'POSTGRESQL',
      'AWS',
      'DOCKER',
      'KUBERNETES',
      'FIGMA',
      'ADOBE XD',
      'GIT',
      'FIREBASE',
      'GRAPHQL',
    ];

    return Container(
      padding: EdgeInsets.symmetric(vertical: 100, horizontal: 40),
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1000),
          child: Column(
            children: [
              SectionTitle(title: 'SKILLS & TECHNOLOGIES'),
              SizedBox(height: 80),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                alignment: WrapAlignment.center,
                children: skills
                    .map((skill) => SkillChip(skill: skill))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
