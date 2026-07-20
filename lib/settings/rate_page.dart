import 'package:flutter/material.dart';

class RatePage extends StatelessWidget {
  const RatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F172A),

      appBar: AppBar(
        backgroundColor: const Color(0xFF0F172A),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Rate Shadow Electro",
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [

              const Icon(
                Icons.star_rounded,
                color: Colors.amber,
                size: 110,
              ),

              const SizedBox(height: 25),

              const Text(
                "Enjoying Shadow Electro?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 18),

              const Text(
                "Your rating helps us improve the application and reach more students, electricians and engineers.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                  height: 1.6,
                ),
              ),

              const SizedBox(height: 35),

              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Icon(Icons.star, color: Colors.amber, size: 36),
                  Icon(Icons.star, color: Colors.amber, size: 36),
                  Icon(Icons.star, color: Colors.amber, size: 36),
                  Icon(Icons.star, color: Colors.amber, size: 36),
                  Icon(Icons.star, color: Colors.amber, size: 36),

                ],
              ),

              const SizedBox(height: 45),

              SizedBox(
                width: double.infinity,
                height: 55,

                child: ElevatedButton.icon(

                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),

                  onPressed: () {

                    ScaffoldMessenger.of(context).showSnackBar(

                      const SnackBar(
                        content: Text(
                          "Google Play version is coming soon.",
                        ),
                      ),

                    );

                  },

                  icon: const Icon(
                    Icons.star,
                    color: Colors.white,
                  ),

                  label: const Text(
                    "Rate Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),

                ),
              ),

              const SizedBox(height: 30),

              const Text(
                "Version 1.0",
                style: TextStyle(
                  color: Colors.white38,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}