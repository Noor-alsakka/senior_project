// To parse this JSON data, do
//
//     final foodOrder = foodOrderFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';
import 'package:senior_project/network/api_provider.dart';
import 'package:senior_project/network/api_helper.dart';


FoodOrder foodOrderFromJson(String str) => FoodOrder.fromJson(json.decode(str));

// String foodOrderToJson(FoodOrder data) => json.encode(data.toJson());


class FoodOrder {
  FoodOrder({
    required this.success,
    required this.code,
    required this.data,
  });

  bool? success;
  int? code;
  Data? data;

  factory FoodOrder.fromJson(Map<String, dynamic> json) => FoodOrder(
    success: json["success"] == null ? null : json["success"],
    code: json["code"] == null ? null : json["code"],
    data: json["data"] == null ? null : Data.fromJson(json["data"]),
  );

  //
  // Map<String, dynamic> toJson() => {
  //   "success": success == null ? null : success,
  //   "code": code == null ? null : code,
  //   "data": data == null ? null : data,
  // };

}

class Data {
  Data({
    required this.userRoomId,
    required this.foodId,
    required this.count,
    required this.notes,
    required this.updatedAt,
    required this.createdAt,
    required this.id,
  });

  int? userRoomId;
  int? foodId;
  int? count;
  String? notes;
  DateTime? updatedAt;
  DateTime? createdAt;
  int? id;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    userRoomId: json["user_room_id"] == null ? null : json["user_room_id"],
    foodId: json["food_id"] == null ? null : json["food_id"],
    count: json["count"] == null ? null : json["count"],
    notes: json["notes"] == null ? null : json["notes"],
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    id: json["id"] == null ? null : json["id"],
  );


}
