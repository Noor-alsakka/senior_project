// To parse this JSON data, do
//
//     final registermodel = registermodelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Registermodel registermodelFromJson(String str) => Registermodel.fromJson(json.decode(str));


class Registermodel {
  Registermodel({
    required this.data,
    required this.accessToken,
    required this.tokenType,
  });

  Data? data;
  String? accessToken;
  String? tokenType;

  factory Registermodel.fromJson(Map<String, dynamic> json) => Registermodel(
    data: json["data"] == null ? null : Data.fromJson(json["data"]),
    accessToken: json["access_token"] == null ? null : json["access_token"],
    tokenType: json["token_type"] == null ? null : json["token_type"],
  );

}

class Data {
  Data({
    required this.fname,
    required this.lname,
    required this.email,
    required this.phoneNum,
    required this.updatedAt,
    required this.createdAt,
    required this.id,
    required this.profilePhotoUrl,
  });

  String? fname;
  String? lname;
  String? email;
  String? phoneNum;
  DateTime? updatedAt;
  DateTime? createdAt;
  int? id;
  String profilePhotoUrl;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    fname: json["fname"] == null ? null : json["fname"],
    lname: json["lname"] == null ? null : json["lname"],
    email: json["email"] == null ? null : json["email"],
    phoneNum: json["phone_num"] == null ? null : json["phone_num"],
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    id: json["id"] == null ? null : json["id"],
    profilePhotoUrl: json["profile_photo_url"] == null ? null : json["profile_photo_url"],
  );


}
