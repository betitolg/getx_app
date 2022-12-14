// To parse this JSON data, do
//
//     final requestAuthenticationModel = requestAuthenticationModelFromJson(jsonString);

import 'dart:convert';

RequestAuthenticationModel requestAuthenticationModelFromJson(String str) =>
    RequestAuthenticationModel.fromJson(json.decode(str));

String requestAuthenticationModelToJson(RequestAuthenticationModel data) =>
    json.encode(data.toMap());

class RequestAuthenticationModel {
  RequestAuthenticationModel({
    this.email,
    this.password,
  });

  String? email;
  String? password;

  factory RequestAuthenticationModel.fromJson(Map<String, dynamic> json) =>
      RequestAuthenticationModel(
        email: json["email"],
        password: json["password"],
      );

  Map<String, dynamic> toMap() => {
        "email": email,
        "password": password,
      };
}
