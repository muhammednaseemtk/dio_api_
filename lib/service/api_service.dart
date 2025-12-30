import 'dart:convert';

import 'package:api_project/model/user_model.dart';
import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio();

  final String url = 'https://68f89269deff18f212b68f9d.mockapi.io/users';

  Future<List<UserModel>> fetchUsers() async {
    try {
      final response = await _dio.get(url);
      List data = response.data;
      return data.map((json) => UserModel.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Failed to load users');
    }
  }
}