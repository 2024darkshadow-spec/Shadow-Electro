import 'package:flutter/material.dart';
import 'lesson_template.dart';

class WhatIsElectricityPage extends StatelessWidget {
  const WhatIsElectricityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LessonTemplate(
      title: "⚡ ما هي الكهرباء؟",
      level: "🟢 المستوى المبتدئ",

      sections: [

        LessonSection(
          title: "📘 التعريف",
          content:
              "الكهرباء هي شكل من أشكال الطاقة ينتج عن وجود أو حركة الشحنات الكهربائية، وتستخدم لتشغيل الأجهزة والأنظمة الكهربائية والإلكترونية.",
        ),

        LessonSection(
          title: "⚙️ التصنيف",
          content:
              "• الكهرباء الساكنة (Static Electricity)\n\n"
              "• الكهرباء المتحركة (Current Electricity)",
        ),

        LessonSection(
          title: "🔋 مصادر الكهرباء",
          content:
              "• محطات التوليد\n"
              "• المولدات الكهربائية\n"
              "• البطاريات\n"
              "• الخلايا الشمسية\n"
              "• توربينات الرياح",
        ),

        LessonSection(
          title: "🏭 الاستخدامات",
          content:
              "• المباني السكنية\n"
              "• المنشآت الصناعية\n"
              "• أنظمة التحكم\n"
              "• الاتصالات\n"
              "• المعدات الطبية",
        ),

        LessonSection(
          title: "📐 الكميات الكهربائية الأساسية",
          content:
              "• الجهد (V)\n"
              "• التيار (I)\n"
              "• المقاومة (R)\n"
              "• القدرة (P)\n"
              "• التردد (f)",
        ),

        LessonSection(
          title: "⚡ الفروع الرئيسية",
          content:
              "• كهرباء القدرة\n"
              "• التحكم الصناعي\n"
              "• الآلات الكهربائية\n"
              "• الإلكترونيات\n"
              "• الطاقة المتجددة",
        ),

      ],
    );
  }
}