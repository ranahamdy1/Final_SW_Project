import 'package:flutter/material.dart';

import '../../shared/shared_screen.dart';

class DailyRecommendedFoods extends StatefulWidget {
  const DailyRecommendedFoods({Key? key}) : super(key: key);

  @override
  State<DailyRecommendedFoods> createState() => _DailyRecommendedFoodsState();
}

class _DailyRecommendedFoodsState extends State<DailyRecommendedFoods> {
  var test = [
    {
      'image': "assets/images/15.jpg",
      'name': "1- dried beans"
    }, //الفاصوليا المجففة
    {
      'image': "assets/images/16.jpeg",
      'name': "2- Oatmeal flakes"
    }, //رقائق الشوفان
    {'image': "assets/images/17.jpeg", 'name': "3- black olives"},
    {'image': "assets/images/18.jpeg", 'name': "4- lentils"}, //العدس
    {'image': "assets/images/19.jpeg", 'name': "5- Wheat Bran"}, //نخالة القمح
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: greenColor,
        elevation: 0.0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 30,
            )),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              greenColor,
              //Color(0xff9e3609),
              Color(0xffc3c9c5),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView.builder(
          itemCount: test.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
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
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Image.asset(test[index]['image']!),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text(
                          test[index]['name']!,
                          style: const TextStyle(fontSize: 27),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
