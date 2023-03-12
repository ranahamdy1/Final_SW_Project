import 'package:flutter/material.dart';
import 'package:sw_project1/ui/drawer/reminder.dart';
import 'package:sw_project1/ui/drawer/connect_us.dart';
import '../../shared/shared_screen.dart';
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
    color: greenColor,
    child: InkWell(
      onTap: () {},
      child: Container(
        color: greenColor,
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
          leading: Icon(
            Icons.home_outlined,
            color: greenColor,
            size: 39,
          ),
          title: Text(
            "Home",
            style: TextStyle(fontSize: 18, color: greenColor),
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MainScreen()));
          },
        ),
        ListTile(
          leading: Icon(
            Icons.article_sharp,
            color: greenColor,
            size: 30,
          ),
          title: Text(
            "Articles",
            style: TextStyle(fontSize: 18, color: greenColor),
          ),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ArticleScreen()));
          },
        ),
        ListTile(
          leading: Icon(
            Icons.calculate,
            color: greenColor,
            size: 30,
          ),
          title: Text(
            "PMI",
            style: TextStyle(fontSize: 18, color: greenColor),
          ),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const BmiScreen()));
          },
        ),
        ListTile(
          leading: Icon(
            Icons.no_food_outlined,
            color: greenColor,
            size: 30,
          ),
          title: Text(
            "Calories",
            style: TextStyle(fontSize: 18, color: greenColor),
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
          leading: Icon(
            Icons.sports_gymnastics,
            color: greenColor,
            size: 30,
          ),
          title: Text(
            "exercises",
            style: TextStyle(fontSize: 18, color: greenColor),
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
          leading: Icon(
            Icons.tips_and_updates,
            color: greenColor,
            size: 30,
          ),
          title: Text(
            "Add Tips",
            style: TextStyle(fontSize: 18, color: greenColor),
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MyHomeDbScreen()));
          },
        ),
        ListTile(
          leading: Icon(
            Icons.timeline,
            color: greenColor,
            size: 30,
          ),
          title: Text(
            "Chronic Diseases",
            style: TextStyle(fontSize: 18, color: greenColor),
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ChronicDiseases()));
          },
        ),
        ListTile(
          leading: Icon(
            Icons.add_alert_sharp,
            color: greenColor,
            size: 30,
          ),
          title: Text(
            "Reminder",
            style: TextStyle(fontSize: 18, color: greenColor),
          ),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ReminderScreen()));
          },
        ),
        Divider(
          color: greenColor,
          thickness: 2,
        ),
        ListTile(
          leading: Icon(
            Icons.feedback,
            color: greenColor,
            size: 30,
          ),
          title: Text(
            "Feedback",
            style: TextStyle(fontSize: 18, color: greenColor),
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const FeedbackScreen()));
          },
        ),
        ListTile(
          leading: Icon(
            Icons.call,
            color: greenColor,
            size: 30,
          ),
          title: Text(
            "Connect Us",
            style: TextStyle(fontSize: 18, color: greenColor),
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ConnectUsScreen()));
          },
        ),
        ListTile(
          leading: Icon(
            Icons.people,
            color: greenColor,
            size: 30,
          ),
          title: Text(
            "About Us",
            style: TextStyle(fontSize: 18, color: greenColor),
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
