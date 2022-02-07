import 'package:senior_project/model/all_rooms.dart';
import 'package:senior_project/room_info_widget_tile.dart';
import 'MainPage.dart';
import 'package:flutter/material.dart';
import 'network/api_provider.dart';

class RoomsPage extends StatefulWidget {
  const RoomsPage({Key? key}) : super(key: key);

  @override
  _RoomsPageState createState() => _RoomsPageState();
}

class _RoomsPageState extends State<RoomsPage> {
  List<Room> rooms = [];

  @override
  void initState() {
    super.initState();
    loadRooms();
  }

  Future<void> loadRooms() async {
    AllRooms allRooms = await ApiProvider.getAllRooms();

    setState(() {
      rooms = allRooms.data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFFFF0202),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.white,
          ),
        ),
        title: Text(
          'Rooms',
          textAlign: TextAlign.end,
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body:
      ListView.builder(
        shrinkWrap: true,
        itemCount: rooms.length,
        itemBuilder: (context, index) {
          return RoomInfoWidgetTile(
            room: rooms[index],
          );
        },
      ),
    );
  }
}
