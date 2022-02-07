import 'package:senior_project/Login.dart';
import 'package:senior_project/model/Register_model.dart';
import 'package:senior_project/model/all_foods.dart';
import 'package:senior_project/model/all_notifications.dart';
import 'package:senior_project/model/all_rooms.dart';
import 'package:senior_project/model/login_model.dart';
import 'package:senior_project/model/requist_food.dart';
import 'package:senior_project/model/requist_food.dart';
import 'package:senior_project/model/requist_food.dart';

import 'api_helper.dart';

class ApiProvider {
  static ApiBaseHelper _apiBaseHelper = ApiBaseHelper();

  static Future<AllRooms> getAllRooms() async {
    final response = await _apiBaseHelper.get("rooms/show_room");
    return AllRooms.fromJson(response);
  }

  static Future<Allfoods> getAllFoods() async {
    final response = await _apiBaseHelper.get("foods/show_food");
    return Allfoods.fromJson(response);
  }

  static Future<AllNotifications> getAllNotifications(String email) async {
    final response = await _apiBaseHelper.post("noti", {"email": email});
    return AllNotifications.fromJson(response);
  }

  static Future<int> getPrice(int serviceId) async {
    final response = await _apiBaseHelper
        .post("service/show_service", {"id": serviceId.toString()});
    return response as int;
  }



  static Future<void> requestService(int serviceId, String? desc) async {
    await _apiBaseHelper.post("service/add_service_request", {
      "email": globalEmail,
      "notes": desc,
      "service_id": serviceId.toString(),
    });
  }

  static Future<LoginMo> login(email, password) async {
    final response = await _apiBaseHelper
        .post("login", {"email": email, "password": password});
    return LoginMo.fromJson(response);
  }

  static Future<Registermodel> register(
      fname, lname, phoneNum, email, password) async {
    final response = await _apiBaseHelper.post("register", {
      "fname": fname,
      "lname": lname,
      "phoneNum": phoneNum,
      "email": email,
      "password": password,
    });
    return Registermodel.fromJson(response);
  }

  static Future<FoodOrder> requestFood(userRoomId,note,count) async {
    final response = await _apiBaseHelper
        .post("foods/order_food",
        {
          "user_room_id" :  userRoomId,
          "count":  count,
          "notes":  note,
        });
    return FoodOrder.fromJson(response);
  }

}
