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
        "Spamurai is a Node.js-powered digital blade that auto-unsubscribes spam emails using IMAP, Puppeteer, and MongoDB Atlas with advanced link safety verification.",
    icon: Icons.shield_rounded,
    flutterSvg: "assets/svg/nodejs.svg",
    dartSvg: "assets/svg/mongodb.svg",
    keyFeatures:
        "• Auto-unsubscribes from emails via IMAP integration\n• Ensures link safety using IPQualityScore API\n• Stores activity logs in MongoDB Atlas\n• Anti-detection stealth browsing with Puppeteer",
    githubLink: "https://github.com/Saathvik-Choudhary/Spamurai",
    demoVideoLink: "https://spamurai.vercel.app/",
    screenshot1: "assets/ss/spamurai1.png",
    screenshot2: "assets/ss/spamurai2.png",
  ),
  Project(
    image: "assets/ss/spamurai.jpg",
    title: "AI Travel Buddy",
    description:
        "An intelligent multi-agent AI travel planning system that generates personalized 2-day itineraries using three specialized AI agents - Explorer, Budget, and Food agents.",
    icon: Icons.flight_takeoff_rounded,
    flutterSvg: "assets/svg/python.svg",
    dartSvg: "assets/svg/javascript.svg",
    keyFeatures:
        "• Multi-agent AI collaboration with Explorer, Budget, and Food agents\n• Real-time weather API and Google Places integration\n• Redis caching for sub-30 second responses\n• FastAPI backend with React/Tailwind CSS frontend",
    githubLink: "https://github.com/Saathvik-Choudhary/AI_Travel_Buddy",
    demoVideoLink: "https://ai-travel-buddy.vercel.app/",
    screenshot1: "assets/ss/spamurai1.png",
    screenshot2: "assets/ss/spamurai2.png",
  ),
  Project(
    image: "assets/ss/spamurai.jpg",
    title: "Agentic RAG System",
    description:
        "A dynamic Agentic RAG pipeline with multi-agent collaboration featuring Query Classifier, Retriever, Reasoning, Summarizer, and Verifier agents for intelligent knowledge assistance.",
    icon: Icons.psychology_rounded,
    flutterSvg: "assets/svg/python.svg",
    dartSvg: "assets/svg/javascript.svg",
    keyFeatures:
        "• Multi-agent architecture with 5 specialized AI agents\n• Dynamic query classification and adaptive reasoning\n• ChromaDB vector store with live web search integration\n• Full transparency with source citations and confidence scoring",
    githubLink: "https://github.com/Saathvik-Choudhary/Rag_Project",
    demoVideoLink: "https://rag-system.streamlit.app/",
    screenshot1: "assets/ss/spamurai1.png",
    screenshot2: "assets/ss/spamurai2.png",
  ),
  Project(
    image: "assets/ss/spamurai.jpg",
    title: "Alex - AI Assistant",
    description:
        "A next-generation AI personal assistant with voice-first interaction, proactive assistance, and ultra-fast Groq-powered inference, featuring natural conversation and intelligent task automation.",
    icon: Icons.assistant_rounded,
    flutterSvg: "assets/svg/javascript.svg",
    dartSvg: "assets/svg/nodejs.svg",
    keyFeatures:
        "• Ultra-fast responses powered by Groq API (10x faster)\n• Voice-first interface with real-time transcription\n• Proactive assistance with behavioral learning\n• Multi-modal input supporting text, voice, and visual inputs",
    githubLink: "https://github.com/Saathvik-Choudhary/Personal_Assistant",
    demoVideoLink: "https://alex-ai-assistant.vercel.app/",
    screenshot1: "assets/ss/spamurai1.png",
    screenshot2: "assets/ss/spamurai2.png",
  ),
  Project(
    image: "assets/ss/spamurai.jpg",
    title: "Sports Events Platform",
    description:
        "A modern, high-performance sports event booking platform built with React, TypeScript, and Material-UI, featuring event discovery, venue management, and seamless booking system.",
    icon: Icons.sports_basketball_rounded,
    flutterSvg: "assets/svg/javascript.svg",
    dartSvg: "assets/svg/java.svg",
    keyFeatures:
        "• Category-based filtering and venue exploration\n• React Query for intelligent data caching\n• Single container Docker deployment with Nginx\n• Comprehensive mock data for standalone deployment",
    githubLink: "https://github.com/Saathvik-Choudhary/Events_Website",
    demoVideoLink: "https://sports-events.vercel.app/",
    screenshot1: "assets/ss/spamurai1.png",
    screenshot2: "assets/ss/spamurai2.png",
  ),
  Project(
    image: "assets/ss/spamurai.jpg",
    title: "Instagram Lead Scraper",
    description:
        "A robust web-scraping system with anti-detection measures, smart filtering, and resume functionality for discovering qualified Instagram leads with comprehensive logging and security features.",
    icon: Icons.search_rounded,
    flutterSvg: "assets/svg/python.svg",
    dartSvg: "assets/svg/python.svg",
    keyFeatures:
        "• Anti-detection with stealth browsing and randomized delays\n• Smart filtering by followers, account age, and bio keywords\n• Resume functionality with checkpoint saving\n• Encrypted logging with secure credential handling",
    githubLink: "https://github.com/Saathvik-Choudhary/Instagram_Scrapper",
    demoVideoLink: "https://instagram-scraper.vercel.app/",
    screenshot1: "assets/ss/spamurai1.png",
    screenshot2: "assets/ss/spamurai2.png",
  ),
];
