import 'package:flutter/material.dart';

class CablePage extends StatefulWidget {
  const CablePage({super.key});

  @override
  State<CablePage> createState() =>
      _CablePageState();
}

class _CablePageState
    extends State<CablePage> {

  final currentController =
      TextEditingController();

  String cableSize = '-';

  void calculateCable() {

    double current =
        double.tryParse(
              currentController.text,
            ) ??
            0;

    setState(() {

      if (current <= 10) {
        cableSize = '1.5 mm²';
      } else if (current <= 20) {
        cableSize = '2.5 mm²';
      } else if (current <= 30) {
        cableSize = '4 mm²';
      } else if (current <= 40) {
        cableSize = '6 mm²';
      } else if (current <= 55) {
        cableSize = '10 mm²';
      } else if (current <= 75) {
        cableSize = '16 mm²';
      } else if (current <= 100) {
        cableSize = '25 mm²';
      } else {
        cableSize = 'أكبر من 25 mm²';
      }

    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor:
          const Color(0xFF0F172A),

      appBar: AppBar(

        backgroundColor:
            const Color(0xFF0F172A),

        iconTheme:
            const IconThemeData(
          color: Colors.white,
        ),

        title: const Text(
          'اختيار الكابل 🔌',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),

      body: Padding(

        padding:
            const EdgeInsets.all(20),

        child: Column(

          children: [

            TextField(

              controller:
                  currentController,

              keyboardType:
                  TextInputType.number,

              style:
                  const TextStyle(
                color: Colors.white,
              ),

              decoration:
                  const InputDecoration(

                labelText:
                    'التيار بالأمبير A',

                labelStyle:
                    TextStyle(
                  color:
                      Colors.white,
                ),
              ),
            ),

            const SizedBox(
              height: 25,
            ),

            ElevatedButton(

              onPressed:
                  calculateCable,

              child:
                  const Text(
                'اختيار الكابل',
              ),
            ),

            const SizedBox(
              height: 30,
            ),

            Container(

              width:
                  double.infinity,

              padding:
                  const EdgeInsets.all(
                20,
              ),

              decoration:
                  BoxDecoration(

                color:
                    const Color(
                  0xFF1E293B,
                ),

                borderRadius:
                    BorderRadius.circular(
                  20,
                ),
              ),

              child: Column(

                children: [

                  const Text(
                    'مقطع الكابل المقترح',

                    style: TextStyle(
                      color:
                          Colors.white70,
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  Text(
                    cableSize,

                    style:
                        const TextStyle(
                      color:
                          Colors.amber,

                      fontSize: 30,

                      fontWeight:
                          FontWeight.bold,
                    ),
                  ),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}