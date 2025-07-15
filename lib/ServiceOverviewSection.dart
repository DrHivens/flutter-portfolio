import 'package:flutter/material.dart';
import 'package:my_portfolio/SectionsTile.dart';
import 'package:my_portfolio/ServiceCard.dart';
import 'package:my_portfolio/ServiceModel.dart';

class ServicesOverviewSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final services = [
      ServiceModel(
        title: 'WEB DEVELOPMENT',
        description:
            'Modern, responsive websites built with cutting-edge technologies.',
        icon: Icons.web,
        features: ['Responsive Design', 'SEO Optimized', 'Fast Loading'],
      ),
      ServiceModel(
        title: 'MOBILE APPS',
        description: 'Cross-platform applications with native performance.',
        icon: Icons.phone_android,
        features: ['iOS & Android', 'Cross-platform', 'Native Performance'],
      ),
      ServiceModel(
        title: 'UI/UX DESIGN',
        description: 'User-centered design that converts and engages.',
        icon: Icons.design_services,
        features: ['User Research', 'Prototyping', 'Design Systems'],
      ),
      ServiceModel(
        title: 'CONSULTING',
        description:
            'Strategic technical guidance for your digital transformation.',
        icon: Icons.lightbulb_outline,
        features: ['Architecture Review', 'Tech Strategy', 'Code Audit'],
      ),
    ];

    return Container(
      padding: EdgeInsets.symmetric(vertical: 100, horizontal: 40),
      color: Color(0xFF111111),
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1200),
          child: Column(
            children: [
              SectionTitle(title: 'SERVICES'),
              SizedBox(height: 20),
              Text(
                'Comprehensive digital solutions for your business needs',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white60,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 80),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: MediaQuery.of(context).size.width > 768
                      ? 2
                      : 1,
                  childAspectRatio: 1.3,
                  mainAxisSpacing: 30,
                  crossAxisSpacing: 30,
                ),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: services.length,
                itemBuilder: (context, index) {
                  return ServiceCard(service: services[index]);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
