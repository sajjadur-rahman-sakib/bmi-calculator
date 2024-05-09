import 'package:flutter/material.dart';
import 'package:sakib/pages/helper/bmi_chart.dart';
import 'package:sakib/pages/helper/bmi_meter.dart';


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
            icon: const Icon(Icons.replay_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert_rounded),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: TextFormField(
                      controller: ageController,
                      decoration: const InputDecoration(labelText: "Age"),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: TextFormField(
                      controller: ftController,
                      decoration: const InputDecoration(labelText: "Ht (ft)"),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.2,
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
                    ),
                  ),
                  const Text(
                    "|",
                    style: TextStyle(fontSize: 24),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.female,
                      size: 30,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.25,
                    child: TextFormField(
                      controller: wtController,
                      decoration:
                          const InputDecoration(labelText: "Weight (kg)"),
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
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              SizedBox(
                height: 300,
                child: bmi_meter(ans),
              ),
              const SizedBox(
                height: 24,
              ),
              bmi_chart(ans),
              const SizedBox(
                height: 8,
              ),
              const Center(
                child: Text(
                  "Normal Weight: 119-180",
                  style: TextStyle(color: Colors.red, fontSize: 24),
                ),
              )
            ],
          ),
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
