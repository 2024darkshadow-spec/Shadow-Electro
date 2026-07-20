import 'package:flutter/material.dart';

class ResistancePage extends StatelessWidget {
  const ResistancePage({super.key});

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
          '🛡 المقاومة الكهربائية',
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
            'المقاومة هي الممانعة التي تعيق مرور التيار الكهربائي.',
          ),

          const SizedBox(height: 15),

          buildSection(
            '📏 وحدة القياس',
            'تقاس المقاومة بوحدة الأوم ويرمز لها بالرمز Ω.',
          ),

          const SizedBox(height: 15),

          buildSection(
            '💡 مثال بسيط',
            'كلما ضاق الأنبوب قل تدفق الماء، والمقاومة تعمل بنفس الفكرة في الدوائر الكهربائية.',
          ),

          const SizedBox(height: 15),

          buildSection(
            '⚠️ معلومة مهمة',
            'زيادة المقاومة تؤدي إلى انخفاض التيار عند ثبات الجهد.',
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