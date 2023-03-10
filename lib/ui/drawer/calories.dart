import 'package:flutter/material.dart';

class CaloriesScreen extends StatefulWidget {
  const CaloriesScreen({Key? key}) : super(key: key);

  @override
  State<CaloriesScreen> createState() => _CaloriesScreenState();
}

class _CaloriesScreenState extends State<CaloriesScreen> {
  int currentIndex = 0;
  String? result;
  late double weight;

  TextEditingController weightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Calories Calculator"),
          elevation: 0.0,
          backgroundColor: const Color(0xff37d461),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 12),
                Row(
                  children: [
                    radioButton("Man", Colors.blue, 0),
                    radioButton("Woman", Colors.purpleAccent, 1),
                  ],
                ),
                const SizedBox(height: 20.0),
                const Text(
                  "Your Weight in Kg :",
                  style: TextStyle(fontSize: 18.0),
                ),
                const SizedBox(height: 8.0),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: weightController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: "Your Weight in Kg ",
                      fillColor: Colors.grey[200],
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                      )),
                ),
                const SizedBox(height: 20.0),
                SizedBox(
                  width: double.infinity,
                  height: 50.0,
                  child: InkWell(
                    onTap: () {
                      weight = double.parse(weightController.value.text);
                      calculateCaloriesWoman(weight);
                    },
                    child: Container(
                      color: const Color(0xff37d461),
                      child: const Center(
                        child: Text(
                          "calculate as a woman",
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                SizedBox(
                  width: double.infinity,
                  height: 50.0,
                  child: InkWell(
                    onTap: () {
                      weight = double.parse(weightController.value.text);
                      calculateCaloriesMan(weight);
                    },
                    child: Container(
                      color: const Color(0xff37d461),
                      child: const Center(
                        child: Text(
                          "calculate as a man",
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                const SizedBox(
                  width: double.infinity,
                  child: Text(
                    " Your Daily Calories is :",
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20.0),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    "$result",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 40.0, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void calculateCaloriesWoman(double weight) {
    double finalResult = (weight * 0.9 * 24); // (/10000)
    String calories = finalResult.toStringAsFixed(2);
    setState(() {
      result = calories;
    });
  }

  void calculateCaloriesMan(double weight) {
    double finalResult = (weight * 1.0 * 24); // (/10000)
    String calories = finalResult.toStringAsFixed(2);
    setState(() {
      result = calories;
    });
  }

  void changeIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  Widget radioButton(String value, Color color, int index) {
    return Expanded(
        child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 12.0),
      height: 80.0,
      child: InkWell(
        onTap: () {
          changeIndex(index);
        },
        child: Container(
          decoration: BoxDecoration(
            color: currentIndex == index ? color : Colors.grey[200],
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Center(
            child: Text(
              value,
              style: TextStyle(
                color: currentIndex == index ? Colors.white : color,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
