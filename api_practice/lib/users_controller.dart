import 'package:api_practice/user_model.dart';
import 'package:dio/dio.dart';

class UsersController {
  final Dio dio = Dio();

  Future<List<UserModel>?> getAllUsers() async {
    try {
      Response response = await dio.get("https://dummyapi.io/data/v1/user",
          options: Options(headers: {"app-id": "64d0bfe815aed87b45b740b3"}));

      if (response.statusCode == 200) {
        var body = response.data;
        List<UserModel> userModels = [];
        for (var userData in body['data']) {
          userModels.add(UserModel.fromJson(userData));
        }
        return userModels;
      } else {
        return null;
      }
    } catch (error) {
      print(error);
      return null;
    }
  }
}
