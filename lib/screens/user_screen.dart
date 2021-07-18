import 'package:flutter/material.dart';
import 'package:flutter_task/API/user-controller-api.dart';
import 'package:flutter_task/models/user_info/user_controller.dart';
import 'package:flutter_task/models/user_info/user_data.dart';
import 'package:flutter_task/widgets/userpage_widget.dart';

class UserScreen extends StatefulWidget {
  final String id;

  UserScreen({
    required this.id,
  });

  get idvalue => id;
  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  late UserControllerApi _api = UserControllerApi(id: widget.id);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF3950D1),
          title: Text("user"),
        ),
        body: FutureBuilder<UserController?>(
          future: _api.userDataFetching(),
          builder: (context, snapshot) {
            //print(snapshot.hasData);
            if (snapshot.hasData) {
              print(5);
              List<Userdata>? _data = snapshot.data!.data;
              return ListView.builder(
                itemBuilder: (context, index) {
                  Userdata _item = _data![index];
                  return UserWidget(
                    id: _item.id ?? 'test',
                    firstName: _item.firstName ?? 'test',
                    lastName: _item.lastName ?? 'test',
                    gender: _item.gender ?? 'test',
                    email: _item.email ?? 'test',
                    dateOfBirth: _item.dateOfBirth ?? 'test',
                    phone: _item.phone ?? 00,
                    picture: _item.picture ?? 'test',
                    registerDate: _item.registerDate ?? 'test',
                    updatedAt: _item.updatedAt ?? 'test',
                    street: _item.location!.street ?? "test",
                    city: _item.location!.city ?? "test",
                    state: _item.location!.state ?? "test",
                    country: _item.location!.country ?? "test",
                    timezone: _item.location!.timezone ?? "test",
                  );
                },
              );
            } else {
              return Center(child: Text('loading...'));
            }
          },
        ),
      ),
    );
  }
}
