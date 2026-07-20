import 'package:flutter/material.dart';

class DeveloperPage extends StatelessWidget {
  const DeveloperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F172A),

      appBar: AppBar(
        backgroundColor: const Color(0xFF0F172A),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Developer",
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            const SizedBox(height: 20),

            const CircleAvatar(
              radius: 60,
              backgroundColor: Color(0xFF1E293B),
              child: Icon(
                Icons.person,
                color: Colors.amber,
                size: 70,
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "Shadow Electro",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Independent Developer",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 18,
              ),
            ),

            const SizedBox(height: 30),

            infoCard(
              Icons.location_on,
              "Country",
              "Palestine 🇵🇸",
              Colors.red,
            ),

            const SizedBox(height: 15),

            infoCard(
              Icons.engineering,
              "Project",
              "Shadow Electro",
              Colors.blue,
            ),

            const SizedBox(height: 15),

            infoCard(
              Icons.bolt,
              "Mission",
              "Building smart electrical tools for students, electricians and engineers.",
              Colors.amber,
            ),

            const SizedBox(height: 35),

            const Divider(color: Colors.white24),

            const SizedBox(height: 20),

            const Text(
              "Made with ❤️ in Palestine 🇵🇸",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Thank you for supporting Shadow Electro.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white54,
              ),
            ),

          ],
        ),
      ),
    );
  }

  Widget infoCard(
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
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),

                const SizedBox(height: 6),

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