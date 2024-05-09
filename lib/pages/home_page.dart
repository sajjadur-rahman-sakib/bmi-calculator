import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController ageController = TextEditingController();
  TextEditingController ftController = TextEditingController();
  TextEditingController inchController = TextEditingController();
  TextEditingController wtController = TextEditingController();

  double? ans = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
        backgroundColor: Colors.grey,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {
                dispose();
              },
              icon: const Icon(Icons.replay_outlined)
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert_rounded)
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 50,
                  child: TextFormField(
                    controller: ageController,
                    decoration: const InputDecoration(labelText: "Age"),
                  ),
                ),
                SizedBox(
                  width: 50,
                  child: TextFormField(
                    controller: ftController,
                    decoration: const InputDecoration(labelText: "Ht (ft)"),
                  ),
                ),
                SizedBox(
                  width: 50,
                  child: TextFormField(
                    controller: inchController,
                    decoration: const InputDecoration(labelText: "Ht (in)"),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.male,
                      size: 30,
                    )),
                const Text(
                  "|",
                  style: TextStyle(fontSize: 24),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.female,
                      size: 30,
                    )),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  width: 90,
                  child: TextFormField(
                    controller: wtController,
                    decoration: const InputDecoration(labelText: "Weight (kg)"),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      double? inch = double.tryParse(inchController.text) ?? 0;
                      double? ft = double.tryParse(ftController.text) ?? 0;
                      double? wt = double.tryParse(wtController.text) ?? 0;

                      double? meter = (ft * 12 + inch) * 0.025;
                      ans = wt / (meter * meter);

                      setState(() {});
                    },
                    icon: const Icon(
                      Icons.chevron_right,
                      size: 30,
                    )),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            SizedBox(
                height: 300,
                child: SfRadialGauge(axes: <RadialAxis>[
                  RadialAxis(minimum: 15, maximum: 40, ranges: <GaugeRange>[
                    GaugeRange(startValue: 15, endValue: 18, color: Colors.red),
                    GaugeRange(
                        startValue: 18, endValue: 25, color: Colors.green),
                    GaugeRange(
                        startValue: 25, endValue: 40, color: Colors.yellow)
                  ], pointers: <GaugePointer>[
                    NeedlePointer(value: ans?.toDouble() ?? 0)
                  ], annotations: <GaugeAnnotation>[
                    GaugeAnnotation(
                        widget: Text(ans!.toStringAsFixed(2),
                            style: const TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                        angle: 90,
                        positionFactor: 0.5)
                  ])
                ])),
            const SizedBox(
              height: 24,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Very Severely Underweight',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: (ans?.toDouble() ?? 0) <= 15.9
                              ? Colors.green
                              : Colors.black,
                          letterSpacing: 0.4),
                    ),
                    const Spacer(),
                    Text(
                      '<- 15.9',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: (ans?.toDouble() ?? 0) <= 15.9
                              ? Colors.green
                              : Colors.black,
                          letterSpacing: 0.4),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Severely Underweight',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: ((ans?.toDouble() ?? 0) >= 16.0 &&
                                  (ans?.toDouble() ?? 0) <= 16.9)
                              ? Colors.green
                              : Colors.black,
                          letterSpacing: 0.4),
                    ),
                    Text(
                      '16.0 - 16.9',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: ((ans?.toDouble() ?? 0) >= 16.0 &&
                                  (ans?.toDouble() ?? 0) <= 16.9)
                              ? Colors.green
                              : Colors.black,
                          letterSpacing: 0.4),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Underweight',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: ((ans?.toDouble() ?? 0) >= 17.0 &&
                                  (ans?.toDouble() ?? 0) <= 18.4)
                              ? Colors.green
                              : Colors.black,
                          letterSpacing: 0.4),
                    ),
                    Text(
                      '17.0 - 18.4',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: ((ans?.toDouble() ?? 0) >= 17.0 &&
                                  (ans?.toDouble() ?? 0) <= 18.4)
                              ? Colors.green
                              : Colors.black,
                          letterSpacing: 0.4),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Normal',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: ((ans?.toDouble() ?? 0) >= 18.5 &&
                                  (ans?.toDouble() ?? 0) <= 24.9)
                              ? Colors.green
                              : Colors.black,
                          letterSpacing: 0.4),
                    ),
                    Text(
                      '18.5 - 24.9',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: ((ans?.toDouble() ?? 0) >= 18.5 &&
                                  (ans?.toDouble() ?? 0) <= 24.9)
                              ? Colors.green
                              : Colors.black,
                          letterSpacing: 0.4),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Overweight',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: ((ans?.toDouble() ?? 0) >= 25.0 &&
                                  (ans?.toDouble() ?? 0) <= 29.9)
                              ? Colors.green
                              : Colors.black,
                          letterSpacing: 0.4),
                    ),
                    Text(
                      '25.0 - 29.9',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: ((ans?.toDouble() ?? 0) >= 25.0 &&
                                  (ans?.toDouble() ?? 0) <= 29.9)
                              ? Colors.green
                              : Colors.black,
                          letterSpacing: 0.4),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Obese Class |',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: ((ans?.toDouble() ?? 0) >= 30.0 &&
                                  (ans?.toDouble() ?? 0) <= 34.9)
                              ? Colors.green
                              : Colors.black,
                          letterSpacing: 0.4),
                    ),
                    Text(
                      '30.0 - 34.9',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: ((ans?.toDouble() ?? 0) >= 30.0 &&
                                  (ans?.toDouble() ?? 0) <= 34.9)
                              ? Colors.green
                              : Colors.black,
                          letterSpacing: 0.4),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Obese Class ||',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: ((ans?.toDouble() ?? 0) >= 35.0 &&
                                  (ans?.toDouble() ?? 0) <= 39.9)
                              ? Colors.green
                              : Colors.black,
                          letterSpacing: 0.4),
                    ),
                    Text(
                      '35.0 - 39.9',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: ((ans?.toDouble() ?? 0) >= 35.0 &&
                                  (ans?.toDouble() ?? 0) <= 39.9)
                              ? Colors.green
                              : Colors.black,
                          letterSpacing: 0.4),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Obese Class |||',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: (ans?.toDouble() ?? 0) >= 45.0
                              ? Colors.green
                              : Colors.black,
                          letterSpacing: 0.4),
                    ),
                    Text(
                      '>= 45.0',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: (ans?.toDouble() ?? 0) >= 45.0
                              ? Colors.green
                              : Colors.black,
                          letterSpacing: 0.4),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "Normal Weight: 119-180",
              style: TextStyle(color: Colors.red, fontSize: 24),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    ageController.clear();
    ftController.clear();
    inchController.clear();
    wtController.clear();
    ans = 0;
  }
}
