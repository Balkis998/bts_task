class Owner {
  String? id;
  String? title;
  String? firstName;
  String? lastName;
  String? email;
  String? picture;

  Owner(
      {this.id,
      this.title,
      this.firstName,
      this.lastName,
      this.email,
      this.picture});

  Owner.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    email = json['email'];
    picture = json['picture'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['email'] = this.email;
    data['picture'] = this.picture;
    return data;
  }
}
