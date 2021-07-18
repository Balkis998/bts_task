import 'onwer.dart';

class Data {
  Owner? owner;
  String? id;
  int? likes;
  List<String>? tags;
  String? appId;
  String? publishDate;
  String? updatedAt;
  String? text;
  String? image;
  String? link;

  Data(
      {this.owner,
      this.id,
      this.likes,
      this.tags,
      this.appId,
      this.publishDate,
      this.updatedAt,
      this.text,
      this.image,
      this.link});

  Data.fromJson(Map<String, dynamic> json) {
    owner = json['owner'] != null ? new Owner.fromJson(json['owner']) : null;
    id = json['id'];
    likes = json['likes'];
    tags = json['tags'] != null ? json['tags'].cast<String>() : null;
    appId = json['appId'];
    publishDate = json['publishDate'];
    updatedAt = json['updatedAt'];
    text = json['text'];
    image = json['image'];
    link = json['link'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.owner != null) {
      data['owner'] = this.owner!.toJson();
    }
    data['id'] = this.id;
    data['likes'] = this.likes;
    data['tags'] = this.tags;
    data['appId'] = this.appId;
    data['publishDate'] = this.publishDate;
    data['updatedAt'] = this.updatedAt;
    data['text'] = this.text;
    data['image'] = this.image;
    data['link'] = this.link;
    return data;
  }
}
