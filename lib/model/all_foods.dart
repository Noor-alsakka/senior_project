// To parse this JSON data, do
//
//     final allfoods = allfoodsFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Allfoods allfoodsFromJson(String str) => Allfoods.fromJson(json.decode(str));

String allfoodsToJson(Allfoods data) => json.encode(data.toJson());

class Allfoods {
  Allfoods({
    required this.success,
    required this.code,
    required this.data,
  });

  bool? success;
  int? code;
  List<Food> data;

  factory Allfoods.fromJson(Map<String, dynamic> json) => Allfoods(
    success: json["success"],
    code: json["code"],
    data: List<Food>.from(json["data"].map((x) => Food.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "code": code,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Food {
  Food({
    required this.id,
    required this.title,
    required this.desc,
    required this.img,
    required this.price,
    required this.createdAt,
    required this.updatedAt,
  });

  int? id;
  String? title;
  String? desc;
  String? img;
  int? price;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory Food.fromJson(Map<String, dynamic> json) => Food(
    id: json["id"],
    title: json["title"],
    desc: json["desc"],
    img: json["img"],
    // food_path["img"],
    price: json["price"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "desc": desc,
    "img": img,
    "price": price,
  };
}
