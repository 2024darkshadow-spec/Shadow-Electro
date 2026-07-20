import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'ai_page.dart';
import 'calculators_page.dart';
import 'circuit_designer_page.dart';
import 'settings_page.dart';

void main() {
  runApp(const ShadowElectro());
}

class ShadowElectro extends StatelessWidget {
  const ShadowElectro({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        '/home': (context) => const HomePage(),
      },
      home: const SplashScreen(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F172A),
     appBar: AppBar(
  backgroundColor: const Color(0xFF0F172A),
  elevation: 0,
  automaticallyImplyLeading: false,

  title: const Text(
    "Shadow Electro",
    style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
  ),

  actions: [

    IconButton(
      icon: const Icon(
        Icons.settings,
        color: Colors.white,
      ),

      onPressed: () {

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const SettingsPage(),
          ),
        );

      },
    ),

  ],
),

body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const SizedBox(height: 20),

                const Text(
                  '⚡ Shadow Electro',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  'منصة كهربائية ذكية للمهندسين والفنيين',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 20),

                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFF1E293B),
                        Color(0xFF243B55),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Row(
                        children: [

                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.amber.withOpacity(0.15),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Icon(
                              Icons.bolt,
                              color: Colors.amber,
                              size: 28,
                            ),
                          ),

                          const SizedBox(width: 15),

                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text(
                                  "Shadow Electro",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                SizedBox(height: 3),

                                Text(
                                  "Version 1.0",
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 15,
                                  ),
                                ),

                              ],
                            ),
                          ),

                        ],
                      ),

                      const SizedBox(height: 25),

                      const Text(
                        "منصة كهربائية ذكية تساعد الطلاب والفنيين والمهندسين على إنجاز أعمالهم بسهولة.",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 15,
                          height: 1.5,
                        ),
                      ),

                      const SizedBox(height: 25),

                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Column(
                            children: [
                              Text(
                                "1",
                                style: TextStyle(
                                  color: Colors.amber,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "جاهزة",
                                style: TextStyle(color: Colors.white70),
                              ),
                            ],
                          ),

                          Column(
                            children: [
                              Text(
                                "2",
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "قيد التطوير",
                                style: TextStyle(color: Colors.white70),
                              ),
                            ],
                          ),

                          Column(
                            children: [
                              Text(
                                "∞",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "تحديثات",
                                style: TextStyle(color: Colors.white70),
                              ),
                            ],
                          ),

                        ],
                      ),

                    ],
                  ),
                ),

                const SizedBox(height: 30),
                                buildCard(
                  context,
                  '🧮 الحاسبات الكهربائية',
                  'حساب قدرة المحرك والكابلات والقواطع',
                  Icons.calculate,
                  Colors.blue,
                  const CalculatorsPage(),
                ),

                const SizedBox(height: 20),

                buildCard(
                  context,
                  '🤖 Shadow AI',
                  'المساعد الكهربائي الذكي',
                  Icons.smart_toy,
                  Colors.green,
                  const AIPage(),
                ),

                const SizedBox(height: 20),

                buildCard(
                  context,
                  '⚡ مصمم الدارات الواقعي',
                  'بناء ومحاكاة دوائر القدرة والتحكم',
                  Icons.electrical_services,
                  Colors.orange,
                  const CircuitDesignerPage(),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCard(
    BuildContext context,
    String title,
    String subtitle,
    IconData icon,
    Color color,
    Widget page,
  ) {
    return InkWell(
      borderRadius: BorderRadius.circular(25),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => page,
          ),
        );
      },
      child: Container(
        height: 145,
        decoration: BoxDecoration(
          color: const Color(0xFF1E293B),
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.25),
              blurRadius: 20,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [

              Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                  color: color.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                    color: color,
                    width: 2,
                  ),
                ),
                child: Icon(
                  icon,
                  color: color,
                  size: 34,
                ),
              ),

              const SizedBox(width: 18),

              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 6),

                    Text(
                      subtitle,
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 15,
                        height: 1.4,
                      ),
                    ),

                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}