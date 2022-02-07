import 'package:flutter/material.dart';
import 'package:senior_project/RoomInfo.dart';
import 'package:senior_project/model/all_rooms.dart';

class RoomInfoWidgetTile extends StatelessWidget {
  final Room room;
  const RoomInfoWidgetTile({Key? key, required this.room}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFCBCE91),
          boxShadow: [
            BoxShadow(
              color: Color(0xFFCBCE91),
              blurRadius: 5,
              spreadRadius: 1,
            )
          ]
        ),
        child: Row(
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => RoomInfo(room)));
              },
              child: Container(
                width: 140,
                height: 80,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/image/istockphoto-512882668-612x612.jpg',
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                padding: EdgeInsets.all(5),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xFFCBCE91), width: 3)),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => RoomInfo(room)));
              },
              child: Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Room Number: ${room.id.toString()}',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffff0202),
                      ),
                    ),
                    Text(
                      'Room Type: ${room.type}',
                      style: TextStyle(
                        color: Color(0xFF76528B),
                      ),
                    ),
                    Text(
                      'Capacity: ${room.personNum.toString()}',
                      style: TextStyle(
                        color: Color(0xFF76528B),
                      ),
                    ),
                    Text(
                      'Price: ${room.price.toString()}',
                      style: TextStyle(
                        color: Color(0xFF76528B),
                      ),
                    ),
                  ],
                ),
              ),
            ),),
          ],
        ),
      ),
    );
  }
}
