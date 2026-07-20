import 'package:flutter/material.dart';

import 'motor_power_page.dart';
import 'current_page.dart';
import 'hp_kw_page.dart';
import 'breaker_page.dart';
import 'overload_page.dart';
import 'cable_page.dart';
import 'voltage_drop_page.dart'; 

class CalculatorsPage extends StatelessWidget {
  const CalculatorsPage({super.key});

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
          'حاسبات الكهربائي ⚡',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),

        child: Column(
          children: [

            buildSection(
              context,
              title: '⚙️ المحركات',
              color: Colors.blue,
              children: [

                buildItem(
                  context,
                  'قدرة المحرك',
                  'حساب الواط والكيلوواط والحصان',
                  Icons.bolt,
                  Colors.blue,
                  const MotorPowerPage(),
                ),

                buildItem(
                  context,
                  'حساب التيار',
                  'حساب التيار من القدرة والفولت',
                  Icons.flash_on,
                  Colors.green,
                  const CurrentPage(),
                ),

                buildItem(
                  context,
                  'تحويل HP ↔ kW',
                  'تحويل الحصان إلى كيلوواط والعكس',
                  Icons.sync_alt,
                  Colors.cyan,
                  const HpKwPage(),
                ),
              ],
            ),

            const SizedBox(height: 15),

            buildSection(
              context,
              title: '⚡ الحماية',
              color: Colors.orange,
              children: [

                buildItem(
                  context,
                  'اختيار القاطع',
                  'تحديد القاطع المناسب حسب التيار',
                  Icons.security,
                  Colors.orange,
                  const BreakerPage(),
                ),

                buildItem(
                  context,
                  'اختيار الأوفرلود',
                  'تحديد مدى ضبط الأوفرلود',
                  Icons.settings,
                  Colors.deepOrange,
                  const OverloadPage(),
                ),
              ],
            ),

            const SizedBox(height: 15),

            buildSection(
              context,
              title: '🔌 الكابلات',
              color: Colors.purple,
              children: [

                buildItem(
  context,
  'اختيار الكابل',
  'تحديد مقطع الكابل المناسب',
  Icons.cable,
  Colors.purple,
  const CablePage(),
),

buildItem(
  context,
  'هبوط الجهد',
  'حساب نسبة هبوط الجهد',
  Icons.show_chart,
  Colors.red,
  const VoltageDropPage(),
),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSection(
    BuildContext context, {
    required String title,
    required Color color,
    required List<Widget> children,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF1E293B),

        borderRadius:
            BorderRadius.circular(20),
      ),

      child: Theme(
        data: ThemeData().copyWith(
          dividerColor:
              Colors.transparent,
        ),

        child: ExpansionTile(

          collapsedIconColor:
              Colors.white,

          iconColor:
              Colors.white,

          title: Text(
            title,

            style: TextStyle(
              color: color,
              fontSize: 22,
              fontWeight:
                  FontWeight.bold,
            ),
          ),

          children: children,
        ),
      ),
    );
  }

  Widget buildItem(
    BuildContext context,
    String title,
    String subtitle,
    IconData icon,
    Color color,
    Widget page,
  ) {
    return ListTile(

      leading: CircleAvatar(
        backgroundColor: color,

        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),

      title: Text(
        title,

        style: const TextStyle(
          color: Colors.white,
          fontWeight:
              FontWeight.bold,
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

      onTap: () {

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => page,
          ),
        );

      },
    );
  }

  Widget buildComingSoon(
    String title,
    IconData icon,
  ) {
    return ListTile(

      leading: CircleAvatar(
        backgroundColor:
            Colors.grey.shade700,

        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),

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
    );
  }
}