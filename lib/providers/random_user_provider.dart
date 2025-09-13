import 'package:flutter/material.dart';

import '../models/users_model.dart';
import '../services/random_user_service.dart';

class RandomUserProvider extends ChangeNotifier {
  UsersModel? usersModel;

  Future<void> getUsers() async {
    usersModel = await RandomUserService.getData();
    notifyListeners();
  }
}
