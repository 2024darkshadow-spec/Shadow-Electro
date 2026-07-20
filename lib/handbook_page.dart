import 'package:flutter/material.dart';
import 'electricity_basics_page.dart';

class HandbookPage extends StatelessWidget {
  const HandbookPage({super.key});

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
          '📖 Shadow Electro Handbook',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),

        children: [

          buildChapter(
            context,
            '⚡ أساسيات الكهرباء',
            const ElectricityBasicsPage(),
          ),

          buildLockedChapter(
            '🔧 أجهزة القياس والاختبار',
          ),

          buildLockedChapter(
            '🔌 الكابلات والأسلاك',
          ),

          buildLockedChapter(
            '🛡️ القواطع والحماية',
          ),

          buildLockedChapter(
            '⚙️ المحركات الكهربائية',
          ),

          buildLockedChapter(
            '🎛️ دوائر التحكم الصناعي',
          ),

          buildLockedChapter(
            '💧 المضخات',
          ),

          buildLockedChapter(
            '⚡ المحولات',
          ),

          buildLockedChapter(
            '🏭 أنظمة التوزيع الكهربائية',
          ),

          buildLockedChapter(
            '🦺 السلامة الكهربائية',
          ),

          buildLockedChapter(
            '🚨 الأعطال العملية وحلولها',
          ),

          buildLockedChapter(
            '📊 الجداول والمرجع السريع',
          ),

        ],
      ),
    );
  }

  Widget buildChapter(
    BuildContext context,
    String title,
    Widget page,
  ) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 15,
      ),

      decoration: BoxDecoration(
        color: const Color(0xFF1E293B),

        borderRadius:
            BorderRadius.circular(20),
      ),

      child: ListTile(

        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => page,
            ),
          );
        },

        title: Text(
          title,

          style: const TextStyle(
            color: Colors.white,
            fontWeight:
                FontWeight.bold,
          ),
        ),

        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.white54,
        ),
      ),
    );
  }

  Widget buildLockedChapter(
    String title,
  ) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 15,
      ),

      decoration: BoxDecoration(
        color: const Color(0xFF1E293B),

        borderRadius:
            BorderRadius.circular(20),
      ),

      child: ListTile(

        title: Text(
          title,

          style: const TextStyle(
            color: Colors.white,
            fontWeight:
                FontWeight.bold,
          ),
        ),

        subtitle: const Text(
          'قريباً',
          style: TextStyle(
            color: Colors.orange,
          ),
        ),

        trailing: const Icon(
          Icons.lock_outline,
          color: Colors.white38,
        ),
      ),
    );
  }
}