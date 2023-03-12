import 'package:flutter/material.dart';
import 'package:sw_project1/ui/chronic_diseases/search/search_screen.dart';

import '../../shared/shared_screen.dart';
import 'diseases/Diabetes_screen.dart';
import 'diseases/Gastritis_screen.dart';
import 'diseases/Kidney_screen.dart';
import 'diseases/blood_pressure_screen.dart';
import 'diseases/colon_screen.dart';

class ChronicDiseases extends StatefulWidget {
  const ChronicDiseases({Key? key}) : super(key: key);

  @override
  State<ChronicDiseases> createState() => _ChronicDiseasesState();
}

class _ChronicDiseasesState extends State<ChronicDiseases> {
  List diseases = [
    {
      "image": "assets/images/12.jpeg",
      "name": "Diabetes",
      "screens": const DiabetesScreen()
    }, //السكر
    {
      "image": "assets/images/13.jpeg",
      "name": "Kidney Disease",
      "screens": const KidneyScreen()
    }, // الكلي
    {
      "image": "assets/images/14.jpeg",
      "name": "Gastritis",
      "screens": const GastritisScreen()
    }, // المعده
    {
      "image": "assets/images/21.jpeg",
      "name": "blood pressure",
      "screens": const bloodPressureScreen()
    }, //ضغط الدم
    {
      "image": "assets/images/22.jpeg",
      "name": "colon",
      "screens": const ColonScreen()
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: greenColor,
        elevation: 0.0,
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: DataSearch());
              },
              icon: const Icon(
                Icons.search,
              )),
        ],
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 30,
            )),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                greenColor,
                //Color(0xff9e3609),
                const Color(0xffc3c9c5),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: ListView.builder(
            itemCount: diseases.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => diseases[index]["screens"]!),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    width: 350,
                    height: 270,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey[300],
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(diseases[index]["image"]!),
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Text(
                              diseases[index]["name"]!, //السكر
                              style: const TextStyle(fontSize: 27),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
