import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
        backgroundColor: Colors.grey,
        foregroundColor: Colors.white,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.replay_outlined)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.more_vert_rounded)),
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
                    decoration: const InputDecoration(labelText: "Age"),
                  ),
                ),
                SizedBox(
                  width: 50,
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: "Ht (ft)"),
                  ),
                ),
                SizedBox(
                  width: 50,
                  child: TextFormField(
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
                    decoration: const InputDecoration(labelText: "Weight (kg)"),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.chevron_right,
                      size: 30,
                    )),
              ],
            ),
            SfRadialGauge(axes: <RadialAxis>[
              RadialAxis(minimum: 0, maximum: 40, ranges: <GaugeRange>[
                GaugeRange(startValue: 0, endValue: 50, color: Colors.green),
                GaugeRange(startValue: 50, endValue: 100, color: Colors.orange),
                GaugeRange(startValue: 100, endValue: 150, color: Colors.red)
              ], pointers: <GaugePointer>[
                NeedlePointer(value: 90)
              ], annotations: <GaugeAnnotation>[
                GaugeAnnotation(
                    widget: Container(
                        child: Text('90.0',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold))),
                    angle: 90,
                    positionFactor: 0.5)
              ])
            ])
          ],
        ),
      ),
    );
  }
}
