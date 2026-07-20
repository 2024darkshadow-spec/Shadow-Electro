import 'package:flutter/material.dart';

class PowerPage extends StatelessWidget {
  const PowerPage({super.key});

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
          '⚡ القدرة الكهربائية',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [

          buildSection(
            '📘 التعريف',
            'القدرة الكهربائية هي معدل استهلاك أو تحويل الطاقة الكهربائية.',
          ),

          const SizedBox(height: 15),

          buildSection(
            '📏 وحدة القياس',
            'تقاس بوحدة الواط (Watt) ويرمز لها بالحرف W.',
          ),

          const SizedBox(height: 15),

          buildSection(
            '💡 القانون',
            'القدرة = الجهد × التيار',
          ),

          const SizedBox(height: 15),

          buildSection(
            '⚠️ معلومة مهمة',
            'كل جهاز كهربائي يمتلك قدرة محددة مكتوبة على بطاقة المواصفات الخاصة به.',
          ),

        ],
      ),
    );
  }

  Widget buildSection(String title, String content) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: const Color(0xFF1E293B),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(
            title,
            style: const TextStyle(
              color: Colors.amber,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 12),

          Text(
            content,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              height: 1.6,
            ),
          ),

        ],
      ),
    );
  }
}