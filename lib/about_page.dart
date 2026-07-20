import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F172A),

      appBar: AppBar(
        backgroundColor: const Color(0xFF0F172A),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "حول التطبيق",
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            const SizedBox(height: 20),

            const Icon(
              Icons.bolt,
              color: Colors.amber,
              size: 90,
            ),

            const SizedBox(height: 20),

            const Text(
              "Shadow Electro",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Version 1.0",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Shadow Electro هو تطبيق كهربائي ذكي يهدف إلى مساعدة الطلاب والفنيين والمهندسين من خلال أدوات عملية وميزات سيتم تطويرها باستمرار.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
                height: 1.6,
              ),
            ),

            const Spacer(),

            const Text(
              "© 2026 Shadow Electro",
              style: TextStyle(
                color: Colors.white38,
              ),
            ),

            const SizedBox(height: 10),

          ],
        ),
      ),
    );
  }
}