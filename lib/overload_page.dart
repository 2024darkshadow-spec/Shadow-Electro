import 'package:flutter/material.dart';

class OverloadPage extends StatefulWidget {
  const OverloadPage({super.key});

  @override
  State<OverloadPage> createState() =>
      _OverloadPageState();
}

class _OverloadPageState
    extends State<OverloadPage> {

  final currentController =
      TextEditingController();

  String overload = '-';

  void calculateOverload() {

    double current =
        double.tryParse(
              currentController.text,
            ) ??
            0;

    setState(() {

      double min =
          current * 0.95;

      double max =
          current * 1.05;

      overload =
          '${min.toStringAsFixed(1)}A - ${max.toStringAsFixed(1)}A';

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
          'اختيار الأوفرلود ⚙️',
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
                    'تيار المحرك بالأمبير',

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
                  calculateOverload,

              child:
                  const Text(
                'اختيار الأوفرلود',
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
                    'مدى ضبط الأوفرلود',

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
                    overload,

                    style:
                        const TextStyle(
                      color:
                          Colors.amber,

                      fontSize: 28,

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