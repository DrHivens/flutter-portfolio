import 'package:flutter/material.dart';
import 'package:my_portfolio/UiButton.dart';

class CallToActionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 120, horizontal: 40),
      color: Color(0xFF111111),
      child: Center(
        child: Column(
          children: [
            Text(
              'READY TO START YOUR PROJECT?',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w100,
                letterSpacing: 6,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Let\'s discuss your ideas and bring them to life',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white60,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(height: 60),
            UIButton(
              text: 'START A PROJECT',
              onPressed: () {},
              isPrimary: true,
            ),
          ],
        ),
      ),
    );
  }
}
