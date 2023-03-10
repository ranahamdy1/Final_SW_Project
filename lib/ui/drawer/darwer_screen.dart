import 'package:flutter/material.dart';
import 'package:sw_project1/ui/drawer/reminder.dart';
import 'package:sw_project1/ui/drawer/connect_us.dart';
import '../../tips/Home_DB.dart';
import '../chronic_diseases/chronic_diseases_screen.dart';
import 'about_us.dart';
import '../articles/articles_screen.dart';
import '../bmi/bmi_screen.dart';
import 'calories.dart';
import 'excercies.dart';
import 'feedback.dart';
import '../main_screen.dart';

Widget buildHeader(BuildContext context) {
  return Material(
    color: const Color(0xff37d461),
    child: InkWell(
      onTap: () {},
      child: Container(
        color: const Color(0xff37d461),
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top, bottom: 24),
        child: Column(
          children: const [
            CircleAvatar(
              radius: 53,
              backgroundImage: AssetImage("assets/images/72.png"),
            ),
            SizedBox(height: 12),
            Text("rana", style: TextStyle(fontSize: 28, color: Colors.white)),
            Text("rana@gmail.com",
                style: TextStyle(fontSize: 18, color: Colors.white)),
          ],
        ),
      ),
    ),
  );
}

Widget buildMenuItems(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Wrap(
      children: [
        ListTile(
          leading: const Icon(
            Icons.home_outlined,
            color: Color(0xff37d461),
            size: 39,
          ),
          title: const Text(
            "Home",
            style: TextStyle(fontSize: 18, color: Color(0xff37d461)),
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MainScreen()));
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.article_sharp,
            color: Color(0xff37d461),
            size: 30,
          ),
          title: const Text(
            "Articles",
            style: TextStyle(fontSize: 18, color: Color(0xff37d461)),
          ),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ArticleScreen()));
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.calculate,
            color: Color(0xff37d461),
            size: 30,
          ),
          title: const Text(
            "PMI",
            style: TextStyle(fontSize: 18, color: Color(0xff37d461)),
          ),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const BmiScreen()));
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.no_food_outlined,
            color: Color(0xff37d461),
            size: 30,
          ),
          title: const Text(
            "Calories",
            style: TextStyle(fontSize: 18, color: Color(0xff37d461)),
          ),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CaloriesScreen()));
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.sports_gymnastics,
            color: Color(0xff37d461),
            size: 30,
          ),
          title: const Text(
            "exercises",
            style: TextStyle(fontSize: 18, color: Color(0xff37d461)),
          ),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ExercisesScreen()));
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.tips_and_updates,
            color: Color(0xff37d461),
            size: 30,
          ),
          title: const Text(
            "Add Tips",
            style: TextStyle(fontSize: 18, color: Color(0xff37d461)),
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MyHomeDbScreen()));
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.timeline,
            color: Color(0xff37d461),
            size: 30,
          ),
          title: const Text(
            "Chronic Diseases",
            style: TextStyle(fontSize: 18, color: Color(0xff37d461)),
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ChronicDiseases()));
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.add_alert_sharp,
            color: Color(0xff37d461),
            size: 30,
          ),
          title: const Text(
            "Reminder",
            style: TextStyle(fontSize: 18, color: Color(0xff37d461)),
          ),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ReminderScreen()));
          },
        ),
        const Divider(
          color: Color(0xff37d461),
          thickness: 2,
        ),
        ListTile(
          leading: const Icon(
            Icons.feedback,
            color: Color(0xff37d461),
            size: 30,
          ),
          title: const Text(
            "Feedback",
            style: TextStyle(fontSize: 18, color: Color(0xff37d461)),
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const FeedbackScreen()));
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.call,
            color: Color(0xff37d461),
            size: 30,
          ),
          title: const Text(
            "Connect Us",
            style: TextStyle(fontSize: 18, color: Color(0xff37d461)),
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ConnectUsScreen()));
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.people,
            color: Color(0xff37d461),
            size: 30,
          ),
          title: const Text(
            "About Us",
            style: TextStyle(fontSize: 18, color: Color(0xff37d461)),
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const AboutUsScreen()));
          },
        ),
      ],
    ),
  );
}
