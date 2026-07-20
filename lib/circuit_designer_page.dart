import 'package:flutter/material.dart';

class CircuitDesignerPage extends StatelessWidget {
  const CircuitDesignerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F172A),

      appBar: AppBar(
        backgroundColor: const Color(0xFF0F172A),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "⚡ مصمم الدارات الواقعي",
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),

        children: [

          const SizedBox(height: 10),

          const Center(
            child: Icon(
              Icons.electrical_services_rounded,
              size: 90,
              color: Colors.amber,
            ),
          ),

          const SizedBox(height: 25),

          const Text(
            "Circuit Designer",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          const Text(
            "نعمل حالياً على تطوير مصمم دوائر كهربائية احترافي يسمح برسم دوائر التحكم والقدرة بطريقة تفاعلية وسهلة.",
            style: TextStyle(
              color: Colors.white70,
              fontSize: 16,
              height: 1.6,
            ),
          ),

          const SizedBox(height: 30),

          buildFeature("🟢 سحب وإفلات المكونات"),
          buildFeature("🟢 رسم دوائر التحكم"),
          buildFeature("🟢 رسم دوائر القدرة"),
          buildFeature("🟡 محاكاة تشغيل الدائرة"),
          buildFeature("🟡 اكتشاف الأخطاء"),
          buildFeature("🟡 حفظ المشاريع"),
          buildFeature("🟡 تصدير المخططات PDF"),
          buildFeature("🟡 مكتبة مكونات كهربائية"),

          const SizedBox(height: 40),

          Container(
            padding: const EdgeInsets.all(18),

            decoration: BoxDecoration(
              color: const Color(0xFF1E293B),
              borderRadius: BorderRadius.circular(18),
            ),

            child: const Column(
              children: [

                Text(
                  "Version 1.0",
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 10),

                Text(
                  "🚧 هذه الميزة قيد التطوير وستتوفر في تحديث قادم.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                  ),
                ),

              ],
            ),
          ),

          const SizedBox(height: 35),

          SizedBox(
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
    );
  }

  Widget buildFeature(String text) {
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