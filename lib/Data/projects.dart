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
    title: "AI Travel Buddy",
    description:
        "An intelligent multi-agent AI travel planning system that generates personalized 2-day itineraries using three specialized AI agents - Explorer, Budget, and Food agents with real-time data integration.",
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
        "A dynamic Agentic RAG pipeline with multi-agent collaboration featuring Query Classifier, Retriever, Reasoning, Summarizer, and Verifier agents for intelligent knowledge assistance with full transparency.",
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
    title: "Travel Like AP",
    description:
        "A modern, responsive biking adventures website with Firebase backend, featuring ride management, admin portal, statistics dashboard, and full CMS functionality for organizing biking group trips.",
    icon: Icons.directions_bike_rounded,
    flutterSvg: "assets/svg/javascript.svg",
    dartSvg: "assets/svg/javascript.svg",
    keyFeatures:
        "• Firebase Firestore backend with authentication\n• Comprehensive admin portal for content management\n• Real-time statistics and ride tracking\n• Responsive design with mobile-first approach",
    githubLink: "https://github.com/Zerodef-Labs/Travel-Like-AP",
    demoVideoLink: "https://travel-like-ap.vercel.app/",
    screenshot1: "assets/ss/spamurai1.png",
    screenshot2: "assets/ss/spamurai2.png",
  ),
  Project(
    image: "assets/ss/spamurai.jpg",
    title: "IDataProfiler",
    description:
        "High-performance data profiling tool built with Streamlit that handles 10M+ rows per session with 45% faster query execution, featuring real-time rule-based profiling and multi-source integration.",
    icon: Icons.analytics_rounded,
    flutterSvg: "assets/svg/python.svg",
    dartSvg: "assets/svg/python.svg",
    keyFeatures:
        "• Handles 10M+ rows with optimized performance\n• Real-time rule-based data profiling\n• Multi-source integration (CSV, DBFS, AWS, SSMS, SQL)\n• Advanced data quality metrics and validation",
    githubLink: "https://github.com/Saathvik-Choudhary/IDataProfiler",
    demoVideoLink: "https://idataprofiler.streamlit.app/",
    screenshot1: "assets/ss/spamurai1.png",
    screenshot2: "assets/ss/spamurai2.png",
  ),
  Project(
    image: "assets/ss/spamurai.jpg",
    title: "DQSpark",
    description:
        "Databricks notebook-based data quality assessment platform providing comprehensive column-level profiling, business rule validation, and data quality insights for large datasets from multiple sources.",
    icon: Icons.dataset_rounded,
    flutterSvg: "assets/svg/python.svg",
    dartSvg: "assets/svg/python.svg",
    keyFeatures:
        "• Automated data quality profiling with Spark\n• Custom business rules and validation logic\n• Column-level and cross-table analysis\n• Power BI integration for interactive dashboards",
    githubLink: "https://github.com/Saathvik-Choudhary/DQSpark",
    demoVideoLink: "https://dqspark.databricks.com/",
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
        "• Anti-detection with stealth browsing and randomized delays\n• Smart filtering by followers, account age, and bio keywords\n• Resume functionality with checkpoint saving\n• Encrypted logging and secure credential handling",
    githubLink: "https://github.com/Saathvik-Choudhary/Instagram_Scrapper",
    demoVideoLink: "https://instagram-scraper.vercel.app/",
    screenshot1: "assets/ss/spamurai1.png",
    screenshot2: "assets/ss/spamurai2.png",
  ),
];
