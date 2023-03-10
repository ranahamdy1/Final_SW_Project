import 'package:flutter/material.dart';

class ExercisesScreen extends StatefulWidget {
  const ExercisesScreen({Key? key}) : super(key: key);

  @override
  State<ExercisesScreen> createState() => _ExercisesScreenScreenState();
}

class _ExercisesScreenScreenState extends State<ExercisesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff37d461),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 22),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 450,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey[300],
                  ),
                  child: Center(child: Image.asset("assets/images/7.jpeg")),
                ),
              ),
              const SizedBox(height: 22),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 450,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey[300],
                  ),
                  child: Center(child: Image.asset("assets/images/9.jpeg")),
                ),
              ),
              const SizedBox(height: 22),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 450,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey[300],
                  ),
                  child: Center(child: Image.asset("assets/images/10.jpg")),
                ),
              ),
              const SizedBox(height: 22),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 450,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey[300],
                  ),
                  child: Center(child: Image.asset("assets/images/7.jpeg")),
                ),
              ),
              const SizedBox(height: 22),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 450,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey[300],
                  ),
                  child: Center(child: Image.asset("assets/images/9.jpeg")),
                ),
              ),
              const SizedBox(height: 22),
            ],
          ),
        ),
      ),
    );
  }
}
