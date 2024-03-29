import 'package:flutter/material.dart';

class NotificationModel {
  final String title;
  final String description;
  final String time;
  final String icon;
  final IconData notificationType;

  NotificationModel({
    required this.title,
    required this.description,
    required this.time,
    required this.icon,
    required this.notificationType,
  });

  static List<NotificationModel> notification = [
    NotificationModel(
      title: "FlutterDev",
      description:
          "pub.dev crosses 50k packages milestone! What is ypur favourite package?",
      time: "1 day",
      icon: "",
      notificationType: Icons.trending_up,
    ),
  ];
}
