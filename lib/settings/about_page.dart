import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F172A),

      appBar: AppBar(
        backgroundColor: const Color(0xFF0F172A),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "About Shadow Electro",
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            const SizedBox(height: 20),

            Hero(
              tag: "logo",
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  "assets/logo.png",
                  width: 130,
                  height: 130,
                ),
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "Shadow Electro ⚡",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              "Professional Electrical Engineering Platform",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 30),

            buildCard(
              Icons.school,
              "Designed for",
              "Students\nElectricians\nEngineers",
              Colors.blue,
            ),

            const SizedBox(height: 15),

            buildCard(
              Icons.electric_bolt,
              "Main Features",
              "⚡ Electrical Calculators\n\n🤖 Shadow AI\n\n🔌 Real Circuit Designer",
              Colors.orange,
            ),

            const SizedBox(height: 15),

            buildCard(
              Icons.verified,
              "Application",
              "Version 1.0",
              Colors.green,
            ),

            const SizedBox(height: 35),

            const Divider(color: Colors.white24),

            const SizedBox(height: 20),

            const Text(
              "© 2026",
              style: TextStyle(
                color: Colors.white54,
                fontSize: 15,
              ),
            ),

            const SizedBox(height: 12),

            const Text(
              "Made with ❤️ in Palestine 🇵🇸",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Thank you for using Shadow Electro.",
              style: TextStyle(
                color: Colors.white54,
              ),
            ),

            const SizedBox(height: 25),

          ],
        ),
      ),
    );
  }

  Widget buildCard(
      IconData icon,
      String title,
      String subtitle,
      Color color,
      ) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(
        color: const Color(0xFF1E293B),
        borderRadius: BorderRadius.circular(18),
      ),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          CircleAvatar(
            radius: 24,
            backgroundColor: color.withOpacity(0.15),
            child: Icon(
              icon,
              color: color,
            ),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Colors.white70,
                    height: 1.5,
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