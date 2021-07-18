import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task/screens/user_screen.dart';

class PostWidget extends StatelessWidget {
  final String id;
  final String firstName;
  final String lastName;
  final String picture;
  final String title;
  final String text;
  final String email;
  final String imageUrl;
  final List<dynamic> tags;
  final int likes;
  final String publishDate;
  final String comment;
  final String profile;
  PostWidget({
    required this.id,
    required this.picture,
    required this.title,
    required this.likes,
    required this.imageUrl,
    required this.tags,
    required this.publishDate,
    required this.email,
    required this.comment,
    required this.profile,
    required this.text,
    required this.lastName,
    required this.firstName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(picture),
                radius: 30,
              ),
              title: Text(firstName + " " + lastName),
              subtitle: Text(email),
            ),
            Divider(),
            Container(
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
              height: 250,
              width: double.infinity,
              color: Color(0xFF3950D1),
            ),
            Container(),
            /*     Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Chip(
                  label: Text(tags[0]),
                  backgroundColor: Colors.pink,
                ),
                SizedBox(
                  width: 5,
                ),
                Chip(
                  label: Text(tags[1]),
                  backgroundColor: Colors.pink,
                ),
                SizedBox(
                  width: 5,
                ),
                Chip(
                  label: Text(tags[2]),
                  backgroundColor: Colors.pink,
                ),
              ],
            ), */
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 10),
              child: Text(text),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.favorite,
                  color: Color(0xFFFF3333),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(likes.toString()),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(publishDate),
                )
              ],
            ),
            Divider(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ignore: deprecated_member_use
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => UserScreen(id: id)),
                    );
                  },
                  child: Text(
                    'go to profile',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  textColor: Color(0xFF3950D1),
                ),
                // ignore: deprecated_member_use
                FlatButton(
                  onPressed: () {
                    //print(id);
                  },
                  child: Text(
                    'go to comments',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  textColor: Color(0xFF3950D1),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /*  Widget cheackTags() {
    return;
  } */
}
