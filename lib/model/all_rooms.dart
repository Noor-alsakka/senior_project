// To parse this JSON data, do
//
//     final allRooms = allRoomsFromJson(jsonString);

import 'dart:convert';

AllRooms allRoomsFromJson(String str) => AllRooms.fromJson(json.decode(str));

String allRoomsToJson(AllRooms data) => json.encode(data.toJson());

class AllRooms {
  AllRooms({
    required this.success,
    required this.code,
    required this.data,
  });

  bool success;
  int? code;
  List<Room> data;

  factory AllRooms.fromJson(Map<String, dynamic> json) => AllRooms(
    success: json["success"],
    code: json["code"],
    data: List<Room>.from(json["data"].map((x) => Room.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "code": code,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Room {
  Room({
    required this.id,
    required this.num,
    required this.personNum,
    required this.bathNum,
    required this.desc,
    required this.type,
    required this.floorNum,
    required this.availability,
    required this.price,
    required this.createdAt,
    required this.updatedAt,
  });

  int? id;
  int? num;
  int? personNum;
  int? bathNum;
  String? desc;
  String? type;
  int? floorNum;
  int? availability;
  int? price;
  DateTime createdAt;
  DateTime updatedAt;

  factory Room.fromJson(Map<String, dynamic> json) => Room(
    id: json["id"],
    num: json["num"],
    personNum: json["person_num"],
    bathNum: json["bath_num"],
    desc: json["desc"] == null ? null : json["desc"],
    type: json["type"],
    floorNum: json["floor_num"],
    availability: json["availability"],
    price: json["price"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "num": num,
    "person_num": personNum,
    "bath_num": bathNum,
    "desc": desc == null ? null : desc,
    "type": type,
    "floor_num": floorNum,
    "availability": availability,
    "price": price,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}
