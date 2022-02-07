// To parse this JSON data, do
//
//     final allNotifications = allNotificationsFromJson(jsonString);

import 'dart:convert';

AllNotifications allNotificationsFromJson(String str) => AllNotifications.fromJson(json.decode(str));

String allNotificationsToJson(AllNotifications data) => json.encode(data.toJson());

class AllNotifications {
  AllNotifications({
    required this.success,
    required this.code,
    required this.data,
  });

  bool success;
  int? code;
  List<NotificationEntity> data;

  factory AllNotifications.fromJson(Map<String, dynamic> json) => AllNotifications(
    success: json["success"],
    code: json["code"],
    data: List<NotificationEntity>.from(json["data"].map((x) => NotificationEntity.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "code": code,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class NotificationEntity {
  NotificationEntity({
    required this.id,
    required this.title,
    required this.description,
  });

  int? id;
  String? title;
  String? description;

  factory NotificationEntity.fromJson(Map<String, dynamic> json) => NotificationEntity(
    id: json["id"],
    title: json["title"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "description": description,
  };
}
