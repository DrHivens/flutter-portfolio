// TODO Implement this library.

import 'package:flutter/material.dart';
import 'package:my_portfolio/FeauturedProjectCard.dart';
import 'package:my_portfolio/ProjectModel.dart';
import 'package:my_portfolio/SectionsTile.dart';

class FeaturedProjectsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final featuredProjects = [
      ProjectModel(
        title: 'FINTECH MOBILE APP',
        description:
            'Revolutionary payment app with AI-powered insights and seamless user experience.',
        tech: 'Flutter • Node.js • MongoDB • AI/ML',
        status: 'LIVE',
        image: Icons.account_balance_wallet,
      ),
      ProjectModel(
        title: 'E-COMMERCE PLATFORM',
        description:
            'Scalable marketplace with real-time analytics and advanced admin dashboard.',
        tech: 'React • GraphQL • PostgreSQL • AWS',
        status: 'IN PROGRESS',
        image: Icons.shopping_cart,
      ),
      ProjectModel(
        title: 'HEALTHCARE DASHBOARD',
        description:
            'Medical data visualization platform for healthcare professionals.',
        tech: 'Vue.js • Python • TensorFlow • Docker',
        status: 'COMPLETED',
        image: Icons.healing,
      ),
    ];

    return Container(
      padding: EdgeInsets.symmetric(vertical: 100, horizontal: 40),
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1200),
          child: Column(
            children: [
              SectionTitle(title: 'FEATURED PROJECTS'),
              SizedBox(height: 20),
              Text(
                'Showcasing my latest work and innovations',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white60,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 80),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: featuredProjects.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 30),
                    child: FeaturedProjectCard(
                      project: featuredProjects[index],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
