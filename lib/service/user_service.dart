import 'package:api_project/model/user_model.dart';
import 'package:dio/dio.dart';

class UserServise{
  Dio dio = Dio();
  Future<List<UserModel>> fetchdata()async{
    try{
      Response response = await dio.get('https://68f89269deff18f212b68f9d.mockapi.io/users');
      if(response.statusCode == 200){
        final data = response.data;
        return (data as List).map((e) => UserModel.fromjson(e)).toList();
      }else{
        throw Exception('not data found');
      }
    }on DioException catch(e){
      throw Exception('error ${e.error}');
    }
  }
}