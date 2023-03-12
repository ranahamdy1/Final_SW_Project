import 'package:flutter/material.dart';

class GastritisScreen extends StatefulWidget {
  const GastritisScreen({Key? key}) : super(key: key);

  @override
  State<GastritisScreen> createState() => _GastritisScreenState();
}

class _GastritisScreenState extends State<GastritisScreen> {
  List list = [
    {
      "image": "assets/images/14.jpeg",
      "name": "Diabetes",
      "dis": ''' Gradually introduce non-spicy foods that are easy to digest, 
such as toast, rice, bananas and potatoes. 
Avoid giving your child full-fat dairy products, 
such as full-fat milk and ice cream, and foods high in sugar, 
such as soft drinks and candy. It may exacerbate diarrhoea'''
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
