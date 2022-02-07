import 'package:flutter/material.dart';
import 'package:senior_project/Login.dart';
import 'package:senior_project/network/api_provider.dart';
import 'RoomsPage.dart';
import 'model/all_rooms.dart';

class RoomInfo extends StatelessWidget {
  final Room room;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xffff0202),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(flex: 1,),
            Text(
              'Reserve_Room',
              style: TextStyle(
                  fontSize: 22,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
            Icon(Icons.meeting_room_sharp),

            Spacer(flex: 2,),
          ],
        ),
      ),
      body: Column(
        children: [
          Image.asset('assets/image/istockphoto-512882668-612x612.jpg'),
          Spacer(flex: 1),
          Text(
            'Description',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 22,
            ),
          ),
          Container(
            width: 400,
            constraints: BoxConstraints(
              maxHeight: 150,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                width: 2,
                color: Colors.black,
              ),
            ),
            child: SingleChildScrollView(
              child:
                Padding(
                  padding: EdgeInsets.only(top: 12, bottom: 12, left: 10),
                  child: Text(
                    room.desc.toString(),
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
            ),
          ),
          Spacer(flex: 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Floor: ',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                room.floorNum.toString(),
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Spacer(flex: 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Bath: ',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                room.bathNum.toString(),
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Spacer(flex: 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Capacity: ',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                room.personNum.toString(),
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Spacer(flex: 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Price: ',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                room.price.toString(),
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Spacer(flex: 1),
          GestureDetector(
            onTap: () {
              // ApiProvider.bookNow(globalEmail);
            },
            child: Container(
              height: 50,
              width: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.5),
                color: Color(0xffff0202),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 8),
                child: Text(
                  'Book Now',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Spacer(flex: 2),
        ],
      ),
    );
  }

  RoomInfo(this.room);
}
