import 'package:flutter/material.dart';

class ServiceModel {
  final String title;
  final String description;
  final IconData icon;
  final List<String> features;

  ServiceModel({
    required this.title,
    required this.description,
    required this.icon,
    required this.features,
  });
}
