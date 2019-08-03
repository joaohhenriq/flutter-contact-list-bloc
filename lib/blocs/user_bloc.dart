import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter_contact_list_bloc/models/user/user_model.dart';
import 'package:flutter_contact_list_bloc/services/user_service.dart';
import 'package:rxdart/rxdart.dart';

class UserBloc extends BlocBase {

  final _userService = UserService();

  final _usersController = BehaviorSubject<List<UserModel>>();
  Stream<List<UserModel>> get outUsersStream => _usersController.stream;
  Sink<List<UserModel>> get outUsersSink => _usersController.sink;

  UserBloc(){
    _userService.getUserModelList().then(outUsersSink.add);
  }

  @override
  void dispose() {
    _usersController.close();
    super.dispose();
  }
}