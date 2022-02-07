import 'package:flutter/material.dart';
import 'package:senior_project/Login.dart';
import 'package:senior_project/network/api_provider.dart';

import 'model/all_notifications.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  List<NotificationEntity> notifications = [];

  @override
  void initState() {
    ApiProvider.getAllNotifications(globalEmail!).then((value) {
      notifications = value.data;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xffff0202),
        automaticallyImplyLeading: false,
        title: Text(
          'Notifications',
          textAlign: TextAlign.end,
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: notifications.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black)),
                child: Column(
                  children: [
                    Text(
                      notifications[index].title!,
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                      ),
                    ),
                    Text(
                      notifications[index].description!,
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
