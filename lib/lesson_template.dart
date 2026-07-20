import 'package:flutter/material.dart';

class LessonTemplate extends StatelessWidget {
  final String title;
  final String level;
  final List<LessonSection> sections;
  final Widget? nextPage;
  final String? nextTitle;

  const LessonTemplate({
    super.key,
    required this.title,
    required this.level,
    required this.sections,
    this.nextPage,
    this.nextTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F172A),

      appBar: AppBar(
        backgroundColor: const Color(0xFF0F172A),
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),

        children: [

          Container(
            padding: const EdgeInsets.all(18),

            decoration: BoxDecoration(
              color: const Color(0xFF1E293B),
              borderRadius: BorderRadius.circular(20),
            ),

            child: Row(
              children: [

                const Icon(
                  Icons.school,
                  color: Colors.amber,
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: Text(
                    level,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

              ],
            ),
          ),

          const SizedBox(height: 20),

          ...sections.map((e) => buildCard(e)).toList(),

          const SizedBox(height: 20),

          if (nextPage != null)

            SizedBox(
              height: 55,

              child: ElevatedButton(

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                ),

                onPressed: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => nextPage!,
                    ),
                  );

                },

                child: Text(
                  "التالي ⟶ $nextTitle",
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

        ],
      ),
    );
  }

  Widget buildCard(LessonSection section) {
    return Container(

      margin: const EdgeInsets.only(bottom: 18),

      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(
        color: const Color(0xFF1E293B),
        borderRadius: BorderRadius.circular(18),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          Text(
            section.title,
            style: const TextStyle(
              color: Colors.amber,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 12),

          Text(
            section.content,
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

class LessonSection {

  final String title;
  final String content;

  LessonSection({
    required this.title,
    required this.content,
  });

}