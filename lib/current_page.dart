import 'package:flutter/material.dart';

class CurrentPage extends StatefulWidget {
  const CurrentPage({super.key});

  @override
  State<CurrentPage> createState() =>
      _CurrentPageState();
}

class _CurrentPageState
    extends State<CurrentPage> {

  final powerController =
      TextEditingController();

  final voltageController =
      TextEditingController();

  double current = 0;

  void calculateCurrent() {

    double power =
        double.tryParse(
              powerController.text,
            ) ??
            0;

    double voltage =
        double.tryParse(
              voltageController.text,
            ) ??
            0;

    if (voltage == 0) {
      return;
    }

    setState(() {
      current =
          power / voltage;
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
          'حساب التيار ⚡',
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
                  powerController,

              style:
                  const TextStyle(
                color: Colors.white,
              ),

              keyboardType:
                  TextInputType.number,

              decoration:
                  const InputDecoration(

                labelText:
                    'القدرة بالواط W',

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
                  voltageController,

              style:
                  const TextStyle(
                color: Colors.white,
              ),

              keyboardType:
                  TextInputType.number,

              decoration:
                  const InputDecoration(

                labelText:
                    'الفولت V',

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
                  calculateCurrent,

              child:
                  const Text(
                'احسب التيار',
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

              child: Text(
                'التيار = ${current.toStringAsFixed(2)} A',

                textAlign:
                    TextAlign.center,

                style:
                    const TextStyle(
                  color:
                      Colors.amber,

                  fontSize: 22,

                  fontWeight:
                      FontWeight.bold,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}