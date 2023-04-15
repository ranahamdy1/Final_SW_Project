import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../shared/shared_screen.dart';
import 'bmi/bmi_screen.dart';
import 'chronic_diseases/chronic_diseases_screen.dart';
import 'diet_screen.dart';
import 'drawer/calories.dart';

class Home1Screen extends StatefulWidget {
  const Home1Screen({Key? key}) : super(key: key);

  @override
  State<Home1Screen> createState() => _Home1ScreenState();
}

class _Home1ScreenState extends State<Home1Screen> {
  int activeIndex = 0;
  final urlImages = [
    'assets/images/1.jpeg',
    'assets/images/2.jpeg',
    'assets/images/3.jpeg',
    'assets/images/4.jpeg',
    'assets/images/5.jpeg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 32),
            CarouselSlider.builder(
              itemCount: urlImages.length,
              itemBuilder: (context, index, realindex) {
                final urlImage = urlImages[index];
                return buildImage(urlImage, index);
              },
              options: CarouselOptions(
                  height: 200,
                  onPageChanged: (index, reason) {
                    return setState(() => activeIndex = index);
                  }),
            ),
            const SizedBox(height: 32),
            buildIndicator(),
            const SizedBox(height: 32),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const BmiScreen()));
              },
              child: Container(
                width: 250,
                height: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: greenColor,
                ),
                child: Center(
                    child: Text("BMI",
                        style:
                            TextStyle(color: Colors.grey[200], fontSize: 60))),
              ),
            ),
            const SizedBox(height: 32),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DietScreen()));
              },
              child: Container(
                width: 250,
                height: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey[200],
                ),
                child: Center(
                    child: Text("Diet",
                        style: TextStyle(color: greenColor, fontSize: 60))),
              ),
            ),
            const SizedBox(height: 32),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CaloriesScreen()));
              },
              child: Container(
                width: 250,
                height: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: greenColor,
                ),
                child: Center(
                    child: Text("Calories",
                        style:
                            TextStyle(color: Colors.grey[100], fontSize: 60))),
              ),
            ),
            const SizedBox(height: 32),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ChronicDiseases()));
              },
              child: Container(
                width: 250,
                height: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey[200],
                ),
                child: Center(
                    child: Text("Chronic Diseases",
                        style: TextStyle(color: greenColor, fontSize: 30))),
              ),
            ),
          ],
        ),
      ),
    ));
  }

  Widget buildIndicator() {
    return AnimatedSmoothIndicator(
        effect: ExpandingDotsEffect(dotWidth: 15, activeDotColor: greenColor),
        activeIndex: activeIndex,
        count: urlImages.length);
  }
}

Widget buildImage(String urlImage, int index) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 5),
    child: Image.asset(
      urlImage,
      fit: BoxFit.cover,
    ),
  );
}
