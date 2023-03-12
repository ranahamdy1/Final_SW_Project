import 'package:flutter/material.dart';

class bloodPressureScreen extends StatefulWidget {
  const bloodPressureScreen({Key? key}) : super(key: key);

  @override
  State<bloodPressureScreen> createState() => _bloodPressureScreenState();
}

class _bloodPressureScreenState extends State<bloodPressureScreen> {
  List list = [
    {
      "image": "assets/images/21.jpeg",
      "name": "Diabetes",
      "dis": ''' Diets to stop high blood pressure: 
Recommended food intakes
Grains: Eat 6 to 8 servings per day. ...
Vegetables: Eat 4 to 5 servings per day. ...
Fruit: Eat 4 to 5 servings per day. ...
Skim or low-fat dairy products: Eat 2 to 3 servings per day.'''
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff37d461),
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
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff37d461),
                //Color(0xff9e3609),
                Color(0xffc3c9c5),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(list[index]["image"]!),
                    ),
                    Text(
                      list[index]["name"]!,
                      style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Text(
                        list[index]["dis"]!,
                        style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ],
                );
              }),
        ),
      ),
    );
  }
}
