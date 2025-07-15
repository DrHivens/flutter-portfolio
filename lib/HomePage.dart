import 'package:flutter/material.dart';
import 'package:my_portfolio/CALLToAction.dart';
import 'package:my_portfolio/FeaturedProjectsSection.dart';
import 'package:my_portfolio/FooterSection.dart';
import 'package:my_portfolio/HeroSection.dart';
import 'package:my_portfolio/ServiceOverviewSection.dart';
import 'package:my_portfolio/SkillsSection.dart';
import 'package:my_portfolio/StatsSection.dart';
import 'package:my_portfolio/TestimonialsSection.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: 1500),
      vsync: this,
    );
    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    _slideAnimation = Tween<Offset>(
      begin: Offset(0, 0.3),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeroSection(
              fadeAnimation: _fadeAnimation,
              slideAnimation: _slideAnimation,
            ),
            FeaturedProjectsSection(),
            ServicesOverviewSection(),
            StatsSection(),
            TestimonialsSection(),
            SkillsSection(),
            CallToActionSection(),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}
