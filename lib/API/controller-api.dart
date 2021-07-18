import 'package:flutter_task/models/post/controller.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ControllerApi {
  Future<ControllerModel?> postFetching() async {
    final postUrl = 'https://dummyapi.io/data/api/post';
    const app_id = '60f097200eb9d04d95f75bed';
    try {
      final postResponse = await http.get(
        Uri.parse(postUrl),
        headers: <String, String>{
          'app-id': app_id,
        },
      );
      late ControllerModel _data;
      if (postResponse.statusCode == 200) {
        _data = ControllerModel.fromJson(json.decode(postResponse.body));
      } else {
        throw 'no data';
      }
      return _data;
    } catch (e) {}
  }
}
