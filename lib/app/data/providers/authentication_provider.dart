import 'package:dio/dio.dart';
import 'package:g62_find_home/app/data/models/request/request_authentication_model.dart';
import 'package:g62_find_home/app/data/models/response/response_authentication_model.dart';

class AuthenticationProvider {
  final _dio = Dio();

  Future<ResponseAuthenticationModel> authentication(
      RequestAuthenticationModel request) async {
    final response = _dio.post(
        "https://api-reservation-flutter.herokuapp.com/api/user/auth",
        data: request.toMap());

    return response
        .then((value) => ResponseAuthenticationModel.fromJson(value.data));
  }
}
