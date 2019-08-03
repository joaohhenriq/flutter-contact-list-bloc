import 'package:dio/dio.dart';
import 'package:flutter_contact_list_bloc/models/user/user_model.dart';

class UserService {
  final String url = "https://jsonplaceholder.typicode.com/users";
  final Dio dio = Dio();

  Future<List<UserModel>> getUserModelList() async{
    try {
      Response res = await dio.get(url);

      List list = res.data as List;

      List<UserModel> userModelList = list.map<UserModel>((user) => UserModel.fromJson(user)).toList();

      return userModelList;
    } catch (e) {
      print(e);
      throw Exception();
    }
  }
}