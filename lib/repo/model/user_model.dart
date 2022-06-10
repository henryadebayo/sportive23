// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    this.success,
    this.accessToken,
    this.refreshToken,
    this.data,
  });

  bool success;
  String accessToken;
  String refreshToken;
  Data data;

  factory User.fromJson(Map<String, dynamic> json) => User(
    success: json["success"],
    accessToken: json["accessToken"],
    refreshToken: json["refreshToken"],
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "accessToken": accessToken,
    "refreshToken": refreshToken,
    "data": data.toJson(),
  };
}

class Data {
  Data({
    this.user,
  });

  UserModel user;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    user: UserModel.fromJson(json["user"]),
  );

  Map<String, dynamic> toJson() => {
    "user": user.toJson(),
  };
}

class UserModel {
  UserModel({
    this.password,
    this.googleId,
    this.facebookId,
    this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.image,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.birthday,
    this.gender,
    this.phoneNumber,
  });

  dynamic googleId;
  dynamic facebookId;
  String id;
  String firstName;
  String lastName;
  String password;
  String email;
  String image;
  DateTime createdAt;
  DateTime updatedAt;
  int v;
  String birthday;
  String gender;
  String phoneNumber;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    googleId: json["googleId"],
    facebookId: json["facebookId"],
    id: json["_id"],
    firstName: json["firstName"],
    lastName: json["lastName"],
    email: json["email"],
    password: json["password"],
    image: json["image"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    v: json["__v"],
    birthday: json["birthday"],
    gender: json["gender"],
    phoneNumber: json["phoneNumber"],
  );

  Map<String, dynamic> toJson() => {
    "googleId": googleId,
    "facebookId": facebookId,
    "_id": id,
    "firstName": firstName,
    "lastName": lastName,
    "email": email,
    "image": image,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "__v": v,
    "birthday": birthday,
    "gender": gender,
    "phoneNumber": phoneNumber,
  };
}
