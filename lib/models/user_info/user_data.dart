import 'user_location.dart';

class Userdata {
  String? id;
  String? firstName;
  String? lastName;
  String? gender;
  String? email;
  String? dateOfBirth;
  int? phone;
  String? picture;
  Location? location;
  String? registerDate;
  String? updatedAt;

  Userdata({
    this.id,
    this.firstName,
    this.lastName,
    this.gender,
    this.email,
    this.dateOfBirth,
    this.phone,
    this.picture,
    this.location,
    this.registerDate,
    this.updatedAt,
  });

  Userdata.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    gender = json['gender'];
    email = json['email'];
    dateOfBirth = json['dateOfBirth'];
    phone = json['phone'];
    picture = json['picture'];
    location = json['location'] != null
        ? new Location.fromJson(json['location'])
        : null;
    registerDate = json['registerDate'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> userData = new Map<String, dynamic>();
    if (this.location != null) {
      userData['location'] = this.location!.toJson();
    }
    userData['id'] = this.id;
    userData['firstName'] = this.firstName;
    userData['lastName'] = this.lastName;
    userData['gender'] = this.gender;
    userData['email'] = this.email;
    userData['dateOfBirth'] = this.dateOfBirth;
    userData['phone'] = this.phone;
    userData['picture'] = this.phone;
    userData['registerDate'] = this.registerDate;
    userData['updatedAt'] = this.updatedAt;
    return userData;
  }
}
