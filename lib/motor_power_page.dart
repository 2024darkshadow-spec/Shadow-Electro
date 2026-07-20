import 'package:flutter/material.dart';

class MotorPowerPage extends StatefulWidget {
  const MotorPowerPage({super.key});

  @override
  State<MotorPowerPage> createState() =>
      _MotorPowerPageState();
}

class _MotorPowerPageState
    extends State<MotorPowerPage> {

  final voltageController =
      TextEditingController();

  final currentController =
      TextEditingController();

  double watt = 0;
  double kw = 0;
  double hp = 0;

  void calculate() {

    double voltage =
        double.tryParse(
              voltageController.text,
            ) ??
            0;

    double current =
        double.tryParse(
              currentController.text,
            ) ??
            0;

    setState(() {

      watt = voltage * current;
      kw = watt / 1000;
      hp = watt / 746;

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
          'حساب قدرة المحرك ⚡',
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
                  voltageController,

              style: const TextStyle(
                color: Colors.white,
              ),

              keyboardType:
                  TextInputType.number,

              decoration:
                  const InputDecoration(

                labelText:
                    'أدخل الفولت',

                labelStyle:
                    TextStyle(
                  color:
                      Colors.white,
                ),

                enabledBorder:
                    OutlineInputBorder(
                  borderSide:
                      BorderSide(
                    color:
                        Colors.white54,
                  ),
                ),

                focusedBorder:
                    OutlineInputBorder(
                  borderSide:
                      BorderSide(
                    color:
                        Colors.amber,
                    width: 2,
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            TextField(

              controller:
                  currentController,

              style: const TextStyle(
                color: Colors.white,
              ),

              keyboardType:
                  TextInputType.number,

              decoration:
                  const InputDecoration(

                labelText:
                    'أدخل الأمبير',

                labelStyle:
                    TextStyle(
                  color:
                      Colors.white,
                ),

                enabledBorder:
                    OutlineInputBorder(
                  borderSide:
                      BorderSide(
                    color:
                        Colors.white54,
                  ),
                ),

                focusedBorder:
                    OutlineInputBorder(
                  borderSide:
                      BorderSide(
                    color:
                        Colors.amber,
                    width: 2,
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 25,
            ),

            ElevatedButton(

              onPressed:
                  calculate,

              child:
                  const Text(
                'احسب القدرة',
              ),
            ),

            const SizedBox(
              height: 30,
            ),

            Container(

              width: double.infinity,

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

                  Text(
                    'القدرة = ${watt.toStringAsFixed(2)} W',

                    style:
                        const TextStyle(
                      color:
                          Colors.amber,

                      fontSize: 18,

                      fontWeight:
                          FontWeight.bold,
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  Text(
                    'الكيلوواط = ${kw.toStringAsFixed(2)} kW',

                    style:
                        const TextStyle(
                      color:
                          Colors.amber,

                      fontSize: 18,

                      fontWeight:
                          FontWeight.bold,
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  Text(
                    'الحصان = ${hp.toStringAsFixed(2)} HP',

                    style:
                        const TextStyle(
                      color:
                          Colors.amber,

                      fontSize: 18,

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