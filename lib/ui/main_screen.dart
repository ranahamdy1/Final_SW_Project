import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import '../shared/shared_screen.dart';
import 'articles/articles_screen.dart';
import 'diet_screen.dart';
import 'drawer/darwer_screen.dart';
import 'home.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print("onMessage $message");
      final snackBar =
          SnackBar(content: Text(message.notification?.title ?? ""));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    });
    super.initState();
  }

  int currentIndex = 0;
  var page = PageController();
  var screens = const [
    Home1Screen(),
    ArticleScreen(),
    DietScreen(),
  ];
  var titleBar = [
    'Nutrition and Fitness',
    'Articles ',
    'Diet',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: greenColor,
        title: Text(
          titleBar[currentIndex],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: greenColor,
        onTap: (index) {
          setState(() {});
          currentIndex = index;
        },
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.article_sharp,
            ),
            label: 'articles',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.no_food,
            ),
            label: 'diet',
          ),
        ],
      ),
      body: PageView.builder(
        controller: page,
        itemCount: screens.length,
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        itemBuilder: (context, index) {
          return screens[currentIndex];
        },
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      ),
    );
  }
}
