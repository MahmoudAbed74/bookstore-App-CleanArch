import 'package:dio/dio.dart';

class Apiservice {
  final Dio _dio;

  final String baseUrl = "https://www.googleapis.com/books/v1/";

  Apiservice(this._dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    Response result = await _dio.get("$baseUrl$endPoint");

    return result.data;
  }
}
