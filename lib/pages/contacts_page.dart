import 'package:flutter/material.dart';
import 'package:flutter_contact_list_bloc/blocs/user_bloc.dart';
import 'package:flutter_contact_list_bloc/models/user/user_model.dart';

class ContactsPage extends StatefulWidget {
  @override
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  UserBloc _userBloc;

  @override
  void initState() {
    _userBloc = UserBloc();
    super.initState();
  }


  @override
  void dispose() {
    _userBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: StreamBuilder<List<UserModel>>(
            stream: _userBloc.outUsersStream,
            builder: (context, AsyncSnapshot<List<UserModel>> snapshot) {
              if(snapshot.hasError){
                return Center(child: Text(snapshot.error),);
              } else
              if (snapshot.hasData && snapshot.data.isNotEmpty) {
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    UserModel userModel = snapshot.data[index];
                    return ListTile(
                      title: Text(userModel.name),
                      subtitle: Column(
                        children: <Widget>[
                          Text(userModel.username),
                          Text(userModel.phone),
                          Text(userModel.address.city),
                          Text(userModel.address.geo.lng),
                          Text(userModel.company.name),
                        ],
                      ),
                    );
                  },
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }),
      ),
    );
  }
}
