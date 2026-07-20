import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    controller.repeat(reverse: true);

    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context, '/home');
      },
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B1220),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            AnimatedBuilder(
              animation: controller,

              builder: (context, child) {
                return Transform.scale(
                  scale: 1 + (controller.value * 0.15),

                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),

                    child: Image.asset(
                      "assets/logo.png",
                      width: 140,
                      height: 140,
                    ),
                  ),
                );
              },
            ),

            const SizedBox(height: 25),

            const Text(
              "Shadow Electro",
              style: TextStyle(
                color: Colors.white,
                fontSize: 34,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Electrical Engineering Platform",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 70),

            const Text(
              "Powered by Shadow Electro",
              style: TextStyle(
                color: Colors.white38,
                fontSize: 13,
              ),
            ),

          ],
        ),
      ),
    );
  }
}