import 'package:flutter/material.dart';

class Project {
  final String image;

  final String title;
  final String description;
  final IconData icon;
  final String flutterSvg;
  final String dartSvg;
  final String keyFeatures;
  final String githubLink;
  final String demoVideoLink;
  final String screenshot1;
  final String screenshot2;

  Project({
    required this.image,
    required this.title,
    required this.description,
    required this.icon,
    required this.flutterSvg,
    required this.dartSvg,
    required this.keyFeatures,
    required this.githubLink,
    required this.demoVideoLink,
    required this.screenshot1,
    required this.screenshot2,
  });
}

List<Project> projects = [
  Project(
    image: "assets/ss/spamurai.jpg",
    title: "Spamurai",
    description:
        "Spamurai is a Node.js-powered digital blade that auto-unsubscribes spam emails using IMAP, Puppeteer, and MongoDB Atlas.",
    icon: Icons.shield_rounded,
    flutterSvg:
        "assets/svg/nodejs.svg",
    dartSvg: "assets/svg/mongodb.svg",
    keyFeatures:
        "• Automatically unsubscribes from emails via IMAP\n• Ensures link safety using IPQualityScore\n• Stores activity logs in MongoDB Atlas",
    githubLink: "https://github.com/Saathvik-Choudhary/Spamurai",
    demoVideoLink:
        "https://spamurai.vercel.app/",
    screenshot1: "assets/ss/spamurai1.png",
    screenshot2: "assets/ss/spamurai2.png",
  ),
];
