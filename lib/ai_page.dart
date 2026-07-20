import 'package:flutter/material.dart';

class AIPage extends StatelessWidget {
  const AIPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F172A),

      appBar: AppBar(
        backgroundColor: const Color(0xFF0F172A),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "🤖 Shadow AI",
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            const SizedBox(height: 20),

            const Center(
              child: Icon(
                Icons.smart_toy_rounded,
                color: Colors.amber,
                size: 90,
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "المساعد الذكي الكهربائي",
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            const Text(
              "يعمل فريق Shadow Electro على تطوير مساعد ذكي متخصص في المجال الكهربائي لمساعدة الطلاب والفنيين والمهندسين.",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
                height: 1.6,
              ),
            ),

            const SizedBox(height: 30),

            feature("تحليل الأعطال الكهربائية"),
            feature("شرح المكونات الكهربائية"),
            feature("المساعدة في الحسابات الكهربائية"),
            feature("الإجابة عن الأسئلة الهندسية"),
            feature("اقتراح حلول عملية للمشكلات"),

            const Spacer(),

            SizedBox(
              width: double.infinity,
              height: 55,

              child: ElevatedButton(
                onPressed: () {},

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                ),

                child: const Text(
                  "🚀 قريبًا",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }

  Widget feature(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),

      child: Row(
        children: [

          const Icon(
            Icons.check_circle,
            color: Colors.green,
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),

        ],
      ),
    );
  }
}