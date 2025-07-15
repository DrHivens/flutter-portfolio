import 'package:flutter/material.dart';
import 'package:my_portfolio/ProjectModel.dart';

class FeaturedProjectCard extends StatelessWidget {
  final ProjectModel project;

  const FeaturedProjectCard({Key? key, required this.project})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40),
      decoration: BoxDecoration(
        color: Color(0xFF1A1A1A),
        border: Border.all(color: Colors.white10),
      ),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Color(0xFF2D2D2D),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(project.image, color: Colors.white70, size: 40),
          ),
          SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      project.title,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 2,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: project.status == 'LIVE'
                            ? Colors.green.withOpacity(0.2)
                            : project.status == 'IN PROGRESS'
                            ? Colors.orange.withOpacity(0.2)
                            : Colors.blue.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        project.status,
                        style: TextStyle(
                          fontSize: 10,
                          color: project.status == 'LIVE'
                              ? Colors.green
                              : project.status == 'IN PROGRESS'
                              ? Colors.orange
                              : Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  project.description,
                  style: TextStyle(
                    fontSize: 14,
                    height: 1.6,
                    color: Colors.white60,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  project.tech,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white70,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
