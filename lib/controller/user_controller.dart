import 'package:api_project/model/user_model.dart';
import 'package:api_project/service/api_service.dart';

class UserController {
  final ApiService _apiService = ApiService();

  Future<List<UserModel>> getUsers() async {
    return await _apiService.fetchUsers();
  }
}
