import 'package:flutter/material.dart';
import '../shared/shared_screen.dart';
import 'articles/diet/gain_weight.dart';
import 'articles/diet/lose_weight.dart';

class DietScreen extends StatefulWidget {
  const DietScreen({Key? key}) : super(key: key);

  @override
  State<DietScreen> createState() => _DietScreenState();
}

class _DietScreenState extends State<DietScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 52),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoseWeightScreen()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(greenColor),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 90, vertical: 20)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(27))),
                ),
                child: const Text(
                  "lose weight",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              const SizedBox(height: 52),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GainWeightScreen()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(greenColor),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 90, vertical: 20)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(27))),
                ),
                child: const Text(
                  "gain weight",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
