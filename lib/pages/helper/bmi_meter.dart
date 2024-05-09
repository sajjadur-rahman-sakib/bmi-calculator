import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';


Widget bmi_meter(ans) {
  return SfRadialGauge(
    axes: <RadialAxis>[
      RadialAxis(
        minimum: 15,
        maximum: 40,
        ranges: <GaugeRange>[
          GaugeRange(
              startValue: 15, endValue: 18, color: Colors.red),
          GaugeRange(
              startValue: 18, endValue: 25, color: Colors.green),
          GaugeRange(
              startValue: 25, endValue: 40, color: Colors.yellow),
        ],
        pointers: <GaugePointer>[
          NeedlePointer(value: ans?.toDouble() ?? 0)
        ],
        annotations: <GaugeAnnotation>[
          GaugeAnnotation(
            widget: Text(
              ans!.toStringAsFixed(2),
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            angle: 90,
            positionFactor: 0.5,
          )
        ],
      )
    ],
  );
}