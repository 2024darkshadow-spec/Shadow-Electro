import 'package:flutter/material.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {

  String selectedLanguage = "Arabic";

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: const Color(0xFF0F172A),

      appBar: AppBar(
        backgroundColor: const Color(0xFF0F172A),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),

        title: const Text(
          "Language",
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            const Text(
              "Choose App Language",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            buildLanguage(
              "🇵🇸",
              "العربية",
              "Arabic",
            ),

            const SizedBox(height: 15),

            buildLanguage(
              "🇬🇧",
              "English",
              "English",
            ),

            const Spacer(),

            const Divider(color: Colors.white24),

            const SizedBox(height: 15),

            const Text(
              "Current language",
              style: TextStyle(
                color: Colors.white54,
              ),
            ),

            const SizedBox(height: 8),

            Text(
              selectedLanguage,
              style: const TextStyle(
                color: Colors.amber,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Language switching will be fully available in the next update.",
              style: TextStyle(
                color: Colors.white38,
              ),
            ),

          ],
        ),
      ),
    );
  }

  Widget buildLanguage(
      String flag,
      String title,
      String value,
      ) {

    return InkWell(

      borderRadius: BorderRadius.circular(18),

      onTap: () {

        setState(() {
          selectedLanguage = value;
        });

      },

      child: Container(

        padding: const EdgeInsets.all(18),

        decoration: BoxDecoration(

          color: const Color(0xFF1E293B),

          borderRadius: BorderRadius.circular(18),

        ),

        child: Row(

          children: [

            Text(
              flag,
              style: const TextStyle(fontSize: 28),
            ),

            const SizedBox(width: 15),

            Expanded(

              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),

            if (selectedLanguage == value)
              const Icon(
                Icons.check_circle,
                color: Colors.green,
              ),

          ],
        ),
      ),
    );
  }
}