import 'package:flutter/material.dart';

class VoltagePage extends StatelessWidget {
  const VoltagePage({super.key});

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
          '⚡ الجهد الكهربائي',
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
            'الجهد الكهربائي هو القوة التي تدفع الإلكترونات للحركة داخل الدائرة الكهربائية.',
          ),

          const SizedBox(height: 15),

          buildSection(
            '📏 وحدة القياس',
            'يقاس الجهد الكهربائي بوحدة الفولت (Volt) ويرمز لها بالحرف V.',
          ),

          const SizedBox(height: 15),

          buildSection(
            '💡 مثال بسيط',
            'تخيل خزان ماء. كلما زاد ضغط الماء زادت قوة تدفقه. في الكهرباء الجهد يشبه ضغط الماء.',
          ),

          const SizedBox(height: 15),

          buildSection(
            '⚠️ معلومة مهمة',
            'وجود جهد كهربائي لا يعني بالضرورة وجود تيار. يجب أن تكون الدائرة مغلقة حتى يتحرك التيار.',
          ),

          const SizedBox(height: 15),

          buildSection(
            '🧠 تذكر',
            'الجهد يدفع • التيار يتحرك • المقاومة تعيق',
          ),

        ],
      ),
    );
  }

  Widget buildSection(
    String title,
    String content,
  ) {
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