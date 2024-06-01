import 'package:flutter/material.dart';

Widget bmi_chart(ans) {
  return Column(
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
  );
}
