// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  final Data data;
  final Token token;

  UserModel({
    required this.data,
    required this.token,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    data: Data.fromJson(json["data"]),
    token: Token.fromJson(json["token"]),
  );

  Map<String, dynamic> toJson() => {
    "data": data.toJson(),
    "token": token.toJson(),
  };
}

class Data {
  final int id;
  final int roleId;
  final String name;
  final String firstName;
  final String middleName;
  final String lastName;
  final String username;
  final String email;
  final bool status;
  final bool isProfileSetup;
  final String userProfileColor;
  final DateTime createdAt;
  final DateTime updatedAt;
  final bool isDisassociated;
  final String thumbFileUrl;
  final String subscriptionStatus;

  Data({
    required this.id,
    required this.roleId,
    required this.name,
    required this.firstName,
    required this.middleName,
    required this.lastName,
    required this.username,
    required this.email,
    required this.status,
    required this.isProfileSetup,
    required this.userProfileColor,
    required this.createdAt,
    required this.updatedAt,
    required this.isDisassociated,
    required this.thumbFileUrl,
    required this.subscriptionStatus,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["id"],
    roleId: json["role_id"],
    name: json["name"],
    firstName: json["first_name"],
    middleName: json["middle_name"],
    lastName: json["last_name"],
    username: json["username"],
    email: json["email"],
    status: json["status"],
    isProfileSetup: json["is_profile_setup"],
    userProfileColor: json["user_profile_color"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    isDisassociated: json["is_disassociated"],
    thumbFileUrl: json["thumb_file_url"],
    subscriptionStatus: json["subscription_status"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "role_id": roleId,
    "name": name,
    "first_name": firstName,
    "middle_name": middleName,
    "last_name": lastName,
    "username": username,
    "email": email,
    "status": status,
    "is_profile_setup": isProfileSetup,
    "user_profile_color": userProfileColor,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "is_disassociated": isDisassociated,
    "thumb_file_url": thumbFileUrl,
    "subscription_status": subscriptionStatus,
  };
}

class Token {
  final String accessToken;

  Token({
    required this.accessToken,
  });

  factory Token.fromJson(Map<String, dynamic> json) => Token(
    accessToken: json["access_token"],
  );

  Map<String, dynamic> toJson() => {
    "access_token": accessToken,
  };
}
