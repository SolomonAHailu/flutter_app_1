// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/post_item.dart';
import 'package:flutter_application_1/styles/app_colors.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  List<String> users = [];

  @override
  Widget build(BuildContext context) {
    mockUsersFromServer();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.background,
          title: Text("5minuteFlutter"),
          actions: [
            Icon(Icons.location_on_outlined),
          ],
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return PostItem(user: users[index]);
          },
          itemCount: users.length,
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 24,
            );
          },
        ));
  }

  mockUsersFromServer() {
    for (var i = 0; i < 20; i++) {
      users.add('Useer numebr $i');
    }

    return users;
  }
}
