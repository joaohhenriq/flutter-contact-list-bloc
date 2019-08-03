import 'package:flutter/material.dart';
import 'package:flutter_contact_list_bloc/services/user_service.dart';

class ContactsPage extends StatefulWidget {
  @override
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  UserService userService;

  @override
  void initState() {
    userService = UserService();
    userService.getUserModelList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

}
