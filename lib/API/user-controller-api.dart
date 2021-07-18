import 'package:flutter_task/models/user_info/user_controller.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class UserControllerApi {
  String id;

  UserControllerApi({
    required this.id,
  });

  Future<UserController?> userDataFetching() async {
    print(id);
    final postUrl = 'https://dummyapi.io/data/api/user/$id';
    const app_id = '60f097200eb9d04d95f75bed';
    try {
      final postResponse = await http.get(
        Uri.parse(postUrl),
        headers: <String, String>{
          'app-id': app_id,
        },
      );
      late UserController _data;
      print(postResponse.statusCode);
      if (postResponse.statusCode == 200) {
        _data = UserController.fromJson(json.decode(postResponse.body));
      } else {
        throw 'no data';
      }
      return _data;
    } catch (e) {}
  }
}






//'https://dummyapi.io/data/api/user/60d0fe4f5311236168a10a2c'