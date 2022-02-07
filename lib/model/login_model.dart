// To parse this JSON data, do
//
//     final loginMo = loginMoFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

LoginMo loginMoFromJson(String str) => LoginMo.fromJson(json.decode(str));

String loginMoToJson(LoginMo data) => json.encode(data.toJson());

class LoginMo {
  LoginMo({
    required this.message,
    required this.accessToken,
    required this.tokenType,
  });

  String? message;
  String? accessToken;
  String? tokenType;

  factory LoginMo.fromJson(Map<String, dynamic> json) => LoginMo(
    message: json["message"] == null ? null : json["message"],
    accessToken: json["access_token"] == null ? null : json["access_token"],
    tokenType: json["token_type"] == null ? null : json["token_type"],
  );

  Map<String, dynamic> toJson() => {
    "message": message == null ? null : message,
    "access_token": accessToken == null ? null : accessToken,
    "token_type": tokenType == null ? null : tokenType,
  };
}
