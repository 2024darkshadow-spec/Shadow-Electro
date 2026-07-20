import 'package:flutter/material.dart';

class WhatsNewPage extends StatelessWidget {
  const WhatsNewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F172A),

      appBar: AppBar(
        backgroundColor: const Color(0xFF0F172A),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "What's New",
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),

        children: [

          const Text(
            "🚀 Version 1.0",
            style: TextStyle(
              color: Colors.amber,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 25),

          buildItem(
            Icons.calculate,
            "Electrical Calculators",
            Colors.blue,
          ),

          buildItem(
            Icons.design_services,
            "Modern User Interface",
            Colors.cyan,
          ),

          buildItem(
            Icons.smart_toy,
            "Shadow AI (Coming Soon)",
            Colors.green,
          ),

          buildItem(
            Icons.electrical_services,
            "Real Circuit Designer (Coming Soon)",
            Colors.orange,
          ),

          const SizedBox(height: 35),

          const Divider(color: Colors.white24),

          const SizedBox(height: 20),

          const Text(
            "Next Updates",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          nextFeature("🌍 Full Language Support"),
          nextFeature("📤 Share App"),
          nextFeature("⭐ Google Play Rating"),
          nextFeature("⚡ More Electrical Calculators"),
          nextFeature("🤖 AI Improvements"),
          nextFeature("🔧 Performance Improvements"),

        ],
      ),
    );
  }

  Widget buildItem(
    IconData icon,
    String text,
    Color color,
  ) {
    return Card(
      color: const Color(0xFF1E293B),
      margin: const EdgeInsets.only(bottom: 15),

      child: ListTile(
        leading: Icon(
          icon,
          color: color,
        ),

        title: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget nextFeature(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),

      child: Row(
        children: [

          const Icon(
            Icons.arrow_right,
            color: Colors.amber,
          ),

          const SizedBox(width: 8),

          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 16,
              ),
            ),
          ),

        ],
      ),
    );
  }
}