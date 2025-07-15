import 'package:flutter/material.dart';

class ProjectModel {
  final String title;
  final String description;
  final String tech;
  final String status;
  final IconData image;

  ProjectModel({
    required this.title,
    required this.description,
    required this.tech,
    required this.status,
    required this.image,
  });
}
