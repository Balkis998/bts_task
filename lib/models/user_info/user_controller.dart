import 'user_data.dart';

class UserController {
  List<Userdata>? data;
  int? total;
  int? page;
  int? limit;
  int? offset;

  UserController({this.data, this.total, this.page, this.limit, this.offset});

  UserController.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data!.add(new Userdata.fromJson(v));
      });
    }
    total = json['total'];
    page = json['page'];
    limit = json['limit'];
    offset = json['offset'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['total'] = this.total;
    data['page'] = this.page;
    data['limit'] = this.limit;
    data['offset'] = this.offset;
    return data;
  }
}
