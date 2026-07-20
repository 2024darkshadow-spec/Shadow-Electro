import 'package:flutter/material.dart';

class BreakerPage extends StatefulWidget {
  const BreakerPage({super.key});

  @override
  State<BreakerPage> createState() =>
      _BreakerPageState();
}

class _BreakerPageState
    extends State<BreakerPage> {

  final currentController =
      TextEditingController();

  String breaker = '-';

  void calculateBreaker() {

    double current =
        double.tryParse(
              currentController.text,
            ) ??
            0;

    setState(() {

      if (current <= 10) {
        breaker = '16A';
      } else if (current <= 16) {
        breaker = '20A';
      } else if (current <= 25) {
        breaker = '32A';
      } else if (current <= 40) {
        breaker = '50A';
      } else if (current <= 50) {
        breaker = '63A';
      } else if (current <= 63) {
        breaker = '80A';
      } else if (current <= 80) {
        breaker = '100A';
      } else {
        breaker = 'أكبر من 100A';
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
          'اختيار القاطع 🛡️',
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
                  calculateBreaker,

              child:
                  const Text(
                'اختيار القاطع',
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
                    'القاطع المقترح',

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
                    breaker,

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