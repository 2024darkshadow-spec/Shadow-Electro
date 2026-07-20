import 'package:flutter/material.dart';

class HpKwPage extends StatefulWidget {
  const HpKwPage({super.key});

  @override
  State<HpKwPage> createState() => _HpKwPageState();
}

class _HpKwPageState extends State<HpKwPage> {

  final hpController = TextEditingController();
  final kwController = TextEditingController();

  double hpResult = 0;
  double kwResult = 0;

  void convertHpToKw() {

    double hp =
        double.tryParse(
              hpController.text,
            ) ??
            0;

    setState(() {
      kwResult = hp * 0.746;
    });
  }

  void convertKwToHp() {

    double kw =
        double.tryParse(
              kwController.text,
            ) ??
            0;

    setState(() {
      hpResult = kw / 0.746;
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
          'تحويل HP ↔ kW',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),

      body: SingleChildScrollView(

        padding:
            const EdgeInsets.all(20),

        child: Column(

          children: [

            TextField(

              controller:
                  hpController,

              keyboardType:
                  TextInputType.number,

              style:
                  const TextStyle(
                color: Colors.white,
              ),

              decoration:
                  const InputDecoration(

                labelText:
                    'الحصان HP',

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

            ElevatedButton(

              onPressed:
                  convertHpToKw,

              child:
                  const Text(
                'تحويل إلى kW',
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            Text(

              'النتيجة = ${kwResult.toStringAsFixed(2)} kW',

              style:
                  const TextStyle(
                color:
                    Colors.amber,

                fontSize: 20,

                fontWeight:
                    FontWeight.bold,
              ),
            ),

            const SizedBox(
              height: 40,
            ),

            const Divider(),

            const SizedBox(
              height: 20,
            ),

            TextField(

              controller:
                  kwController,

              keyboardType:
                  TextInputType.number,

              style:
                  const TextStyle(
                color: Colors.white,
              ),

              decoration:
                  const InputDecoration(

                labelText:
                    'الكيلوواط kW',

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

            ElevatedButton(

              onPressed:
                  convertKwToHp,

              child:
                  const Text(
                'تحويل إلى HP',
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            Text(

              'النتيجة = ${hpResult.toStringAsFixed(2)} HP',

              style:
                  const TextStyle(
                color:
                    Colors.amber,

                fontSize: 20,

                fontWeight:
                    FontWeight.bold,
              ),
            ),

          ],
        ),
      ),
    );
  }
}