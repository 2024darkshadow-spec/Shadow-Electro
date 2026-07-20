import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F172A),

      appBar: AppBar(
        backgroundColor: const Color(0xFF0F172A),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "الإعدادات",
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),

        children: [

          buildTile(
            Icons.language,
            "اللغة",
            "العربية / English",
            Colors.blue,
          ),

          const SizedBox(height: 15),

          buildTile(
            Icons.share,
            "مشاركة التطبيق",
            "Share Shadow Electro",
            Colors.green,
          ),

          const SizedBox(height: 15),

          buildTile(
            Icons.star_rate,
            "تقييم التطبيق",
            "Rate App",
            Colors.amber,
          ),

          const SizedBox(height: 15),

          buildTile(
            Icons.new_releases,
            "ما الجديد",
            "What's New",
            Colors.orange,
          ),

          const SizedBox(height: 15),

          buildTile(
            Icons.info,
            "حول التطبيق",
            "About Shadow Electro",
            Colors.cyan,
          ),

          const SizedBox(height: 15),

          buildTile(
            Icons.flag,
            "المطور",
            "Developer",
            Colors.red,
          ),

          const SizedBox(height: 15),

          buildTile(
            Icons.email,
            "تواصل معنا",
            "Contact",
            Colors.purple,
          ),

          const SizedBox(height: 40),

          const Divider(color: Colors.white24),

          const SizedBox(height: 20),

          const Center(
            child: Column(
              children: [

                Text(
                  "Shadow Electro ⚡",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 10),

                Text(
                  "Version 1.0",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                  ),
                ),

                SizedBox(height: 20),

                Text(
                  "© 2026",
                  style: TextStyle(
                    color: Colors.white54,
                  ),
                ),

                SizedBox(height: 10),

                Text(
                  "Made with ❤️ in Palestine 🇵🇸",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                  ),
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }

  Widget buildTile(
    IconData icon,
    String title,
    String subtitle,
    Color color,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF1E293B),
        borderRadius: BorderRadius.circular(18),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: color.withOpacity(0.15),
          child: Icon(
            icon,
            color: color,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(
            color: Colors.white70,
          ),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.white54,
          size: 18,
        ),
      ),
    );
  }
}