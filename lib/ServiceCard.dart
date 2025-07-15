import 'package:flutter/material.dart';
import 'package:my_portfolio/ServiceModel.dart';

class ServiceCard extends StatelessWidget {
  final ServiceModel service;

  const ServiceCard({Key? key, required this.service}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Color(0xFF1A1A1A),
        border: Border.all(color: Colors.white10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(service.icon, color: Colors.white70, size: 32),
          SizedBox(height: 20),
          Text(
            service.title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w300,
              letterSpacing: 1,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 15),
          Text(
            service.description,
            style: TextStyle(fontSize: 14, height: 1.6, color: Colors.white60),
          ),
          SizedBox(height: 20),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: service.features
                .map(
                  (feature) => Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      feature,
                      style: TextStyle(fontSize: 10, color: Colors.white70),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
