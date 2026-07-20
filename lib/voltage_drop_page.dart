import 'package:flutter/material.dart';

class VoltageDropPage extends StatefulWidget {
  const VoltageDropPage({super.key});

  @override
  State<VoltageDropPage> createState() =>
      _VoltageDropPageState();
}

class _VoltageDropPageState
    extends State<VoltageDropPage> {

  final voltageController =
      TextEditingController();

  final currentController =
      TextEditingController();

  final lengthController =
      TextEditingController();

  double dropVolt = 0;
  double dropPercent = 0;

  void calculateDrop() {

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

    double length =
        double.tryParse(
              lengthController.text,
            ) ??
            0;

    setState(() {

      dropVolt =
          (2 * length * current * 0.018) /
          4;

      if (voltage > 0) {

        dropPercent =
            (dropVolt / voltage) *
                100;

      } else {

        dropPercent = 0;

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
          'هبوط الجهد 📉',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),

      body: Padding(

        padding:
            const EdgeInsets.all(20),

        child: SingleChildScrollView(

          child: Column(

            children: [

              TextField(

                controller:
                    voltageController,

                keyboardType:
                    TextInputType.number,

                style:
                    const TextStyle(
                  color:
                      Colors.white,
                ),

                decoration:
                    const InputDecoration(

                  labelText:
                      'الفولت V',

                  labelStyle:
                      TextStyle(
                    color:
                        Colors.white,
                  ),
                ),
              ),

              const SizedBox(
                height: 15,
              ),

              TextField(

                controller:
                    currentController,

                keyboardType:
                    TextInputType.number,

                style:
                    const TextStyle(
                  color:
                      Colors.white,
                ),

                decoration:
                    const InputDecoration(

                  labelText:
                      'التيار A',

                  labelStyle:
                      TextStyle(
                    color:
                        Colors.white,
                  ),
                ),
              ),

              const SizedBox(
                height: 15,
              ),

              TextField(

                controller:
                    lengthController,

                keyboardType:
                    TextInputType.number,

                style:
                    const TextStyle(
                  color:
                      Colors.white,
                ),

                decoration:
                    const InputDecoration(

                  labelText:
                      'طول الكابل متر',

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
                    calculateDrop,

                child:
                    const Text(
                  'احسب',
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

                    Text(
                      'هبوط الجهد = ${dropVolt.toStringAsFixed(2)} V',

                      style:
                          const TextStyle(
                        color:
                            Colors.amber,

                        fontSize: 22,

                        fontWeight:
                            FontWeight.bold,
                      ),
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    Text(
                      'النسبة = ${dropPercent.toStringAsFixed(2)} %',

                      style:
                          const TextStyle(
                        color:
                            Colors.white,

                        fontSize: 18,
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