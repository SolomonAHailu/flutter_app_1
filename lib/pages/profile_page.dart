// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/toolbar.dart';
import 'package:flutter_application_1/components/user_avatar.dart';
import 'package:flutter_application_1/config/app_routes.dart';
import 'package:flutter_application_1/styles/app_text.dart';

enum ProfileMenu { edit, logout }

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(
        title: "Profile",
        actions: [
          PopupMenuButton<ProfileMenu>(
            onSelected: (value) {
              switch (value) {
                case ProfileMenu.edit:
                  Navigator.of(context).pushNamed(AppRoutes.editProfile);
                  break;
                case ProfileMenu.logout:
                  print("logout");
                  break;
                default:
              }
            },
            icon: Icon(Icons.more_vert_rounded),
            itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text("Edit"), value: ProfileMenu.edit),
                PopupMenuItem(
                    child: Text("Log out"), value: ProfileMenu.logout),
              ];
            },
          )
        ],
      ),
      body: Column(
        children: [
          UserAvatar(
            size: 90,
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            "Solomon A H",
            style: AppText.header2,
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            "Ethiopia",
            style: AppText.subtitle3,
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    "723",
                    style: AppText.header2,
                  ),
                  Text("Followers")
                ],
              ),
              Column(
                children: [
                  Text(
                    "111",
                    style: AppText.header2,
                  ),
                  Text("Following")
                ],
              ),
              Column(
                children: [
                  Text(
                    "74",
                    style: AppText.header2,
                  ),
                  Text("Posts")
                ],
              ),
            ],
          ),
          Divider(
            thickness: 1,
            height: 24,
          ),
        ],
      ),
    );
  }
}
