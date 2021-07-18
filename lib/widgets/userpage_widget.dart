import 'package:flutter/material.dart';

class UserWidget extends StatelessWidget {
  final String id;
  final String firstName;
  final String lastName;
  final String gender;
  final String email;
  final String dateOfBirth;
  final int phone;
  final String picture;
  final String registerDate;
  final String updatedAt;
  final String street;
  final String city;
  final String state;
  final String country;
  final String timezone;

  const UserWidget({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.email,
    required this.dateOfBirth,
    required this.phone,
    required this.picture,
    required this.registerDate,
    required this.updatedAt,
    required this.street,
    required this.city,
    required this.state,
    required this.country,
    required this.timezone,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 700,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              color: Colors.red,
              height: 250,
              width: double.infinity,
              child: Image.network(
                picture,
                fit: BoxFit.cover,
              ),
            ),
            Text(id),
            Text('Gender :$gender'),
            Text('Date Of Birth :$dateOfBirth'),
            Text('Register Date :$registerDate'),
            Divider(height: 15),
            Text('Email :$email'),
            Text('Phone: :$phone'),
            Container(
              height: 200,
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Divider(),
                    Text(
                      'Address',
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(country),
                    Text(state),
                    Text(city),
                    Text(street),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
