import 'package:flutter/material.dart';
import 'package:flutter_task/API/controller-api.dart';
import 'package:flutter_task/models/post/controller.dart';
import 'package:flutter_task/models/post/data.dart';
import '../widgets/post_widget.dart';

class PostScreen extends StatefulWidget {
  static const String id = 'PostScreen';
  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  ControllerApi _api = ControllerApi();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF3950D1),
            title: Text('Posts'),
          ),
          body: FutureBuilder<ControllerModel?>(
              future: _api.postFetching(),
              builder: (context, snapsot) {
                if (snapsot.hasData) {
                  List<Data>? _data = snapsot.data!.data;
                  return ListView.builder(itemBuilder: (context, index) {
                    Data _item = _data![index];

                    return PostWidget(
                      id: _item.id ?? 'test',
                      picture: _item.owner!.picture ?? 'test',
                      title: _item.owner!.title ?? 'test',
                      likes: _item.likes ?? 0,
                      imageUrl: _item.image ?? 'test',
                      tags: _item.tags ?? [],
                      publishDate: _item.publishDate ?? '',
                      email: _item.owner!.email ?? 'test',
                      comment: _item.owner!.email ?? 'test',
                      profile: _item.owner!.picture ?? 'test',
                      text: _item.text ?? 'test',
                      lastName: _item.owner!.lastName ?? 'test',
                      firstName: _item.owner!.firstName ?? 'test',
                    );
                  });
                } else {
                  return Center(child: Text('loading...'));
                }
              })),
    );
  }
}
