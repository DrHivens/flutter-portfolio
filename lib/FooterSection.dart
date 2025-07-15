import 'package:flutter/material.dart';
import 'package:my_portfolio/SkillChip.dart';

class FooterSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 60, horizontal: 40),
      color: Color(0xFF0A0A0A),
      child: Center(
        child: Column(
          children: [
            Wrap(
              spacing: 40,
              runSpacing: 20,
              alignment: WrapAlignment.center,
              children: [
                SocialIcon(
                  icon: Icons.email,
                  label: 'hello@PLACEHOLDERdev.com',
                ),
                SocialIcon(
                  icon: Icons.code,
                  label: 'github.com/PLACEHOLDERdev',
                ),
                SocialIcon(
                  icon: Icons.work,
                  label: 'linkedin.com/in/PLACEHOLDERdev',
                ),
                SocialIcon(icon: Icons.phone, label: '+1 (555) 123-4567'),
              ],
            ),
            SizedBox(height: 40),
            Text(
              '© 2024 PLACEHOLDER Developer. All rights reserved.',
              style: TextStyle(fontSize: 12, color: Colors.white70),
            ),
          ],
        ),
      ),
    );
  }
}
