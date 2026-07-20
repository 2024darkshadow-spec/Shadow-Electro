import 'package:flutter/material.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F172A),

      appBar: AppBar(
        backgroundColor: const Color(0xFF0F172A),

        iconTheme: const IconThemeData(
          color: Colors.white,
        ),

        title: const Text(
          'المكتبة الكهربائية 📚',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            buildItem(
              'المحركات',
              Icons.settings,
              Colors.blue,
            ),

            const SizedBox(height: 15),

            buildItem(
              'الكابلات',
              Icons.cable,
              Colors.purple,
            ),

            const SizedBox(height: 15),

            buildItem(
              'القواطع والحماية',
              Icons.electrical_services,
              Colors.orange,
            ),

            const SizedBox(height: 15),

            buildItem(
              'المضخات',
              Icons.water_drop,
              Colors.cyan,
            ),

            const SizedBox(height: 15),

            buildItem(
              'دوائر التحكم',
              Icons.memory,
              Colors.green,
            ),

            const SizedBox(height: 15),

            buildItem(
              'المحولات',
              Icons.bolt,
              Colors.red,
            ),

          ],
        ),
      ),
    );
  }

  Widget buildItem(
    String title,
    IconData icon,
    Color color,
  ) {
    return Container(

      height: 90,

      decoration: BoxDecoration(
        color: const Color(0xFF1E293B),

        borderRadius:
            BorderRadius.circular(20),
      ),

      child: ListTile(

        leading: Icon(
          icon,
          color: color,
          size: 35,
        ),

        title: Text(
          title,

          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),

        subtitle: const Text(
          'سيتم إضافة المحتوى قريباً',

          style: TextStyle(
            color: Colors.white70,
          ),
        ),
      ),
    );
  }
}