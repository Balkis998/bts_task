class Location {
  String? street;
  String? city;
  String? state;
  String? country;
  String? timezone;

  Location({
    this.street,
    this.city,
    this.state,
    this.country,
    this.timezone,
  });

  Location.fromJson(Map<String, dynamic> json) {
    street = json['street'];
    city = json['city'];
    state = json['state'];
    country = json['country'];
    timezone = json['timezone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> locationData = new Map<String, dynamic>();
    locationData['street'] = this.street;
    locationData['city'] = this.city;
    locationData['state'] = this.state;
    locationData['country'] = this.country;
    locationData['timezone'] = this.timezone;

    return locationData;
  }
}
