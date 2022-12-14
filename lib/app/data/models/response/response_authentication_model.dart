// To parse this JSON data, do
//
//     final responseAuthenticationModel = responseAuthenticationModelFromJson(jsonString);

import 'dart:convert';

ResponseAuthenticationModel responseAuthenticationModelFromJson(String str) =>
    ResponseAuthenticationModel.fromJson(json.decode(str));

String responseAuthenticationModelToJson(ResponseAuthenticationModel data) =>
    json.encode(data.toJson());

class ResponseAuthenticationModel {
  ResponseAuthenticationModel({
    this.success,
    this.requestToken,
    this.idUser,
  });

  bool? success;
  String? requestToken;
  String? idUser;

  factory ResponseAuthenticationModel.fromJson(Map<String, dynamic> json) =>
      ResponseAuthenticationModel(
        success: json["success"],
        requestToken: json["requestToken"],
        idUser: json["idUser"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "requestToken": requestToken,
        "idUser": idUser,
      };
}
