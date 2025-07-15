import 'package:flutter/material.dart';
import 'package:my_portfolio/SectionsTile.dart';
import 'package:my_portfolio/Testomonial.dart';
import 'package:my_portfolio/TestomonialModel.dart';

class TestimonialsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final testimonials = [
      TestimonialModel(
        quote:
            'Outstanding work! The mobile app exceeded our expectations and delivered on time.',
        author: 'Sarah Johnson',
        position: 'CEO, TechStart',
      ),
      TestimonialModel(
        quote:
            'Professional, efficient, and incredibly skilled. Highly recommended!',
        author: 'Michael Chen',
        position: 'CTO, InnovateCorp',
      ),
    ];

    return Container(
      padding: EdgeInsets.symmetric(vertical: 100, horizontal: 40),
      color: Color(0xFF111111),
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1000),
          child: Column(
            children: [
              SectionTitle(title: 'TESTIMONIALS'),
              SizedBox(height: 80),
              Row(
                children: testimonials
                    .map(
                      (testimonial) => Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: TestimonialCard(testimonial: testimonial),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
