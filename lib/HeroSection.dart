import 'package:flutter/material.dart';
import 'package:my_portfolio/GridPainter.dart';
import 'package:my_portfolio/UiButton.dart';
import 'HeroSection.dart';
import 'FeaturedProjectsSection.dart';

class HeroSection extends StatelessWidget {
  final Animation<double> fadeAnimation;
  final Animation<Offset> slideAnimation;

  const HeroSection({
    Key? key,
    required this.slideAnimation,
    required this.fadeAnimation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF0A0A0A), Color(0xFF1A1A1A)],
        ),
      ),
      child: Stack(
        children: [
          CustomPaint(painter: GridPainter(), child: Container()),
          Center(
            child: FadeTransition(
              opacity: fadeAnimation,
              child: SlideTransition(
                position: slideAnimation,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 160,
                      height: 160,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [Color(0xFF2D2D2D), Color(0xFF1A1A1A)],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black54,
                            blurRadius: 20,
                            offset: Offset(0, 10),
                          ),
                        ],
                      ),
                      child: Icon(Icons.code, size: 80, color: Colors.white70),
                    ),
                    SizedBox(height: 40),
                    Text(
                      'PLACEHOLDER DEVELOPER',
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.w100,
                        letterSpacing: 8,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'FULL STACK DEVELOPER & UI/UX DESIGNER',
                      style: TextStyle(
                        fontSize: 16,
                        letterSpacing: 4,
                        color: Colors.white60,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Creating digital experiences that inspire and perform',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white70,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 60),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        UIButton(text: 'VIEW PROJECTS', onPressed: () {}),
                        SizedBox(width: 20),
                        UIButton(
                          text: 'HIRE ME',
                          onPressed: () {},
                          isPrimary: true,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
