import 'package:flutter/material.dart';
import 'package:flutter_contact_list_bloc/pages/contacts_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ContactsPage(),
    );
  }
}