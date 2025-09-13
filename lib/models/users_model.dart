class UsersModel {
  List users;

  UsersModel({required this.users});

  factory UsersModel.getJson({required Map<String, dynamic> json}) {
    return UsersModel(users: json["results"]);
  }
}
