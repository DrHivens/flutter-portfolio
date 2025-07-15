import 'package:flutter/material.dart';
import 'package:my_portfolio/TestomonialModel.dart';

class TestimonialCard extends StatelessWidget {
  final TestimonialModel testimonial;

  const TestimonialCard({Key? key, required this.testimonial})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Color(0xFF1A1A1A),
        border: Border.all(color: Colors.white10),
      ),
      child: Column(
        children: [
          Text(
            '"${testimonial.quote}"',
            style: TextStyle(
              fontSize: 16,
              height: 1.6,
              color: Colors.white70,
              fontStyle: FontStyle.italic,
            ),
          ),
          SizedBox(height: 20),
          Text(
            testimonial.author,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 5),
          Text(
            testimonial.position,
            style: TextStyle(fontSize: 12, color: Colors.white60),
          ),
        ],
      ),
    );
  }
}
