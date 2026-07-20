import 'package:flutter/material.dart';
import 'what_is_electricity_page.dart';

class ElectricityBasicsPage extends StatelessWidget {
  const ElectricityBasicsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F172A),

      appBar: AppBar(
        backgroundColor: const Color(0xFF0F172A),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          '⚡ أساسيات الكهرباء',
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),

        children: [

          const Text(
            "🟢 المستوى المبتدئ",
            style: TextStyle(
              color: Colors.amber,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          buildLesson(
            context,
            "⚡ ما هي الكهرباء؟",
            const WhatIsElectricityPage(),
          ),

          buildLesson(
            context,
            "⚡ الجهد الكهربائي",
            null,
          ),

          buildLesson(
            context,
            "🔋 التيار الكهربائي",
            null,
          ),

          buildLesson(
            context,
            "🛡 المقاومة الكهربائية",
            null,
          ),

          buildLesson(
            context,
            "⚡ القدرة الكهربائية",
            null,
          ),

        ],
      ),
    );
  }

  Widget buildLesson(
    BuildContext context,
    String title,
    Widget? page,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),

      decoration: BoxDecoration(
        color: const Color(0xFF1E293B),
        borderRadius: BorderRadius.circular(18),
      ),

      child: ListTile(

        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
        ),

        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.white54,
          size: 18,
        ),

        onTap: () {

          if (page != null) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => page,
              ),
            );
          }

        },
      ),
    );
  }
}