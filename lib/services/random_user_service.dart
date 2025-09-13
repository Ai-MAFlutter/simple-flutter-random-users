import 'package:dio/dio.dart';

import '../models/users_model.dart';


class RandomUserService {
  static Dio dio = Dio();
  static Future<UsersModel> getData() async {
    Response response = await dio.get("https://randomuser.me/api/?results=30");
    if (response.statusCode == 200) {
      return UsersModel.getJson(json: response.data);
    } else {
      throw Exception("Error in Request");
    }
  }
} 