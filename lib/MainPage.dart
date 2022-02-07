import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:senior_project/ContactUs.dart';
import 'package:senior_project/Login.dart';
import 'package:senior_project/Service.dart';
import 'package:senior_project/chat_bot_page.dart';
import 'Home.dart';
import 'main.dart';
import 'NewsCard.dart';
import 'ContactUs.dart';
import 'RoomsPage.dart';
import 'Offerss.dart';
import 'Login.dart';
import 'Service.dart';
import 'Home.dart';
import 'notifications_page.dart';

// import 'package:flutter_feather_icons/flutter_feather_icons.dart';
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 2;
  List<Widget> pages = [
    ContactUs(),
    Offers(),
    Home(),
    ChatBotPage(),
    NotificationsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular((10 * (currentIndex+1)).toDouble()), topRight: Radius.circular((50 / (currentIndex+1)).toDouble())),
        child: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Color(0xFFCBCE91),
          items: [
            BottomNavigationBarItem(
              backgroundColor: Color(0xFFFF0202),
              icon: Icon(
                Icons.contact_support_outlined,
                color: Colors.white,
                // size: 45.5,
              ),
              label: 'contact',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.local_offer_outlined,
                color: Colors.white,
                // size: 45.5,
              ),
              label: 'offers',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.white,
              ),
              label: 'home',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.forward_to_inbox_outlined,
                  color: Colors.white,
                  // size: 45.5,
                ),
                label: 'forward'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.white,
                  // size: 45.5,
                ),
                label: 'circle'),
          ],
        ),
      ),
      body: pages[currentIndex],
    );
  }
}
